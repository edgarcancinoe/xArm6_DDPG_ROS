#!/usr/bin/env python3
import numpy as np
import mujoco_py
import math
from actor_network import ActorNetwork
import torch
import copy

class TrajectoryPlanner():
    def __init__(self, params, initial_qpos):
        # Load simulation environment
        model = mujoco_py.load_model_from_path(params['MODEL_XML_PATH'])
        self.sim = mujoco_py.MjSim(model, nsubsteps=params['n_substeps'])
        
        # Useful variables
        self.var = math.sqrt(2)/2
        self.clip_obs = params['clip_obs']
        self.clip_range = params['clip_range']
        self.max_n_timesteps = params['max_n_timesteps']
        self.bound = params['max_action']
        self.distance_threshold = 0.01
        self.goal = []
        self._viewers = {}
        self.viewer = None
        
        # Set initial configuration for sim
        self._env_setup(initial_qpos=initial_qpos, obs = self.sim.data.get_site_xpos('robot0:grip'))

        # Create Acting Policy
        self.policy = ActorNetwork(alpha = params['alpha'], 
                            state_dims = params['obs_shape'] + params['goal_shape'], 
                            n_actions=params['n_actions'],
                            name="Actor",
                            max_action=params['max_action'])
        
        self.o_mean, self.o_std, self.g_mean, \
        self.g_std, self.model = torch.load(params['policy_path'], map_location=lambda storage, loc: storage)
        
        self.policy.load_state_dict(self.model)
        self.policy.eval() 
        self.policy = self.policy.to('cpu')

    # Get trajectory method
    def get_trajectory(self, initial_state, target_position, initial_qpos) -> np.ndarray:

        self._env_setup(initial_qpos=initial_qpos, obs=initial_state[:3])

        did_reset_sim = False
        while not did_reset_sim:
            did_reset_sim = self._reset_sim(initial_qpos)
    
        # Define np.array() to store trajectory to follow
        position_trajectory = np.zeros((self.max_n_timesteps, 3))
        joint_states = np.zeros((self.max_n_timesteps, 11))
        counter = 0
        obs = initial_state   
        self.goal = target_position
        for t in range(self.max_n_timesteps):
            self.render()

            state = self._pre_process_inputs(obs=obs, goal=target_position)
            with torch.no_grad():
                pi = self.policy(state).numpy().squeeze()
            new_obs = self.step(pi)

            done = self._is_success(new_obs['achieved_goal'], target_position)

            position_trajectory[t] = new_obs['observation'][:3]
            joint_states[t] = new_obs['joints']
            counter += 1

            if done:
                position_trajectory[t+1] = new_obs['achieved_goal']
                joint_states[t+1] = new_obs['joints']
                break
            else:
                obs = new_obs['observation']

        return position_trajectory, joint_states, done, counter

    # Compute step
    def step(self, action):
        action = np.clip(action, -self.bound, self.bound)
        self._set_action(action)
        self.sim.step()
        return self._get_obs()

    def _reset_sim(self, qpos):
        """Resets a simulation and indicates whether or not it was successful.
        If a reset was unsuccessful (e.g. if a randomized state caused an error in the
        simulation), this method should indicate such a failure by returning False.
        In such a case, this method will be called again to attempt a the reset again.
        """
        
        state = mujoco_py.MjSimState(time=0, 
                                     qpos=np.array(list(qpos.values())),
                                     qvel=np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]),
                                     act=None,udd_state={})

        self.sim.set_state(state)

        self.sim.forward()
        return True

    # Define internal methods
    def _env_setup(self, initial_qpos, obs):
        for name, value in initial_qpos.items():
            self.sim.data.set_joint_qpos(name, value)
        self._reset_mocap_welds()
        self.sim.forward()

        # Move end effector into position.
        # gripper_target = np.array([0., 0., 0. + self.gripper_extra_height]) + self.sim.data.get_site_xpos('robot0:grip')
        # gripper_target = np.array([0. + self.gripper_extra_height, 0., 0.]) + self.sim.data.get_site_xpos('robot0:grip')
        gripper_target = obs
        gripper_rotation = np.array([self.var, 0., self.var, 0.])

        self.sim.data.set_mocap_pos('robot0:mocap', gripper_target)
        self.sim.data.set_mocap_quat('robot0:mocap', gripper_rotation)
        for _ in range(50):
            self.sim.step()

            
    def _get_obs(self):

        grip_pos = self.sim.data.get_site_xpos('robot0:grip')
        dt = self.sim.nsubsteps * self.sim.model.opt.timestep
        grip_velp = self.sim.data.get_site_xvelp('robot0:grip') * dt
        robot_qpos, robot_qvel = self._robot_get_obs()

        object_pos = object_rot = object_velp = object_velr = object_rel_pos = np.zeros(0)
        
        gripper_state = robot_qpos[-2:]
        gripper_vel = robot_qvel[-2:] * dt  # change to a scalar if the gripper is made symmetric

        achieved_goal = grip_pos.copy()

        obs = np.concatenate([
            grip_pos, object_pos.ravel(), object_rel_pos.ravel(), gripper_state, object_rot.ravel(),
            object_velp.ravel(), object_velr.ravel(), grip_velp, gripper_vel,
            ])
        return {
                'observation': obs.copy(),
                'achieved_goal': achieved_goal.copy(),
                'joints': robot_qpos.copy()
                }

    def _set_action(self, action):
        assert action.shape == (4,)
        action = action.copy()
        pos_ctrl, gripper_ctrl = action[:3], action[3]

        pos_ctrl *= 0.02  # limit maximum change in position
        rot_ctrl = [self.var, 0, self.var, 0]  # fixed rotation of the end effector, expressed as a quaternion

        gripper_ctrl = np.array([gripper_ctrl, gripper_ctrl])
        assert gripper_ctrl.shape == (2,)
        gripper_ctrl = np.zeros_like(gripper_ctrl) 

        action = np.concatenate([pos_ctrl, rot_ctrl, gripper_ctrl])

        # Apply action to simulation.
        self._ctrl_set_action(action)
        self._mocap_set_action(action)

        return

    def _pre_process_inputs(self, obs, goal):
        """
            Observation and goal are normalized and concatenated to
            enter policy network.
        """

        o_clip = np.clip(obs, -self.clip_obs, self.clip_obs)
        g_clip = np.clip(goal, -self.clip_obs, self.clip_obs)
        o_norm = np.clip((o_clip - self.o_mean) / (self.o_std), -self.clip_range, self.clip_range)
        g_norm = np.clip((g_clip - self.g_mean) / (self.g_std), -self.clip_range, self.clip_range)
        inputs = np.concatenate([o_norm, g_norm])

        inputs = torch.tensor(inputs, dtype=torch.float32).unsqueeze(0)
        return inputs
    
    
    def _robot_get_obs(self):
        """Returns all joint positions and velocities associated with
        a robot.
        """
        if self.sim.data.qpos is not None and self.sim.model.joint_names:
            names = [n for n in self.sim.model.joint_names if n.startswith('robot')]
            return (
                np.array([self.sim.data.get_joint_qpos(name) for name in names]),
                np.array([self.sim.data.get_joint_qvel(name) for name in names]),
            )
        return np.zeros(0), np.zeros(0)
    


    def _ctrl_set_action(self, action):
        """For torque actuators it copies the action into mujoco ctrl field.
        For position actuators it sets the target relative to the current qpos.
        """
        if self.sim.model.nmocap > 0:
            _, action = np.split(action, (self.sim.model.nmocap * 7, ))
        
        if self.sim.data.ctrl is not None:
            for i in range(action.shape[0]):
                if self.sim.model.actuator_biastype[i] == 0:
                    self.sim.data.ctrl[i] = action[i]
                else:
                    idx = self.sim.model.jnt_qposadr[self.sim.model.actuator_trnid[i, 0]]
                    self.sim.data.ctrl[i] = self.sim.data.qpos[idx] + action[i]
        return
    
    def _mocap_set_action(self, action):
        """The action controls the robot using mocaps. Specifically, bodies
        on the robot (for example the gripper wrist) is controlled with
        mocap bodies. In this case the action is the desired difference
        in position and orientation (quaternion), in world coordinates,
        of the of the target body. The mocap is positioned relative to
        the target body according to the delta, and the MuJoCo equality
        constraint optimizer tries to center the welded body on the mocap.
        """
        if self.sim.model.nmocap > 0:
            action, _ = np.split(action, (self.sim.model.nmocap * 7, ))
            action = action.reshape(self.sim.model.nmocap, 7)
            
            pos_delta = action[:, :3]
            quat_delta = action[:, 3:]

            self._reset_mocap2body_xpos()
            self.sim.data.mocap_pos[:] = self.sim.data.mocap_pos + pos_delta
            self.sim.data.mocap_quat[:] = self.sim.data.mocap_quat + quat_delta
        return

    def _reset_mocap_welds(self):
        """Resets the mocap welds that we use for actuation.
        """
        if self.sim.model.nmocap > 0 and self.sim.model.eq_data is not None:
            for i in range(self.sim.model.eq_data.shape[0]):
                if self.sim.model.eq_type[i] == mujoco_py.const.EQ_WELD:
                    self.sim.model.eq_data[i, :] = np.array(
                        [0., 0., 0., 1., 0., 0., 0.])
        self.sim.forward()
        return

    def _reset_mocap2body_xpos(self):
        """Resets the position and orientation of the mocap bodies to the same
        values as the bodies they're welded to.
        """

        if (self.sim.model.eq_type is None or
            self.sim.model.eq_obj1id is None or
            self.sim.model.eq_obj2id is None):
            return
        for eq_type, obj1_id, obj2_id in zip(self.sim.model.eq_type,
                                            self.sim.model.eq_obj1id,
                                            self.sim.model.eq_obj2id):
            if eq_type != mujoco_py.const.EQ_WELD:
                continue

            mocap_id = self.sim.model.body_mocapid[obj1_id]
            if mocap_id != -1:
                # obj1 is the mocap, obj2 is the welded body
                body_idx = obj2_id
            else:
                # obj2 is the mocap, obj1 is the welded body
                mocap_id = self.sim.model.body_mocapid[obj2_id]
                body_idx = obj1_id

            assert (mocap_id != -1)
            self.sim.data.mocap_pos[mocap_id][:] = self.sim.data.body_xpos[body_idx]
            self.sim.data.mocap_quat[mocap_id][:] = self.sim.data.body_xquat[body_idx]
        return
    
    def _is_success(self, achieved_goal, desired_goal):
        d =  np.linalg.norm(achieved_goal - desired_goal, axis=-1)
        return (d < self.distance_threshold).astype(np.float32)


    def render(self, mode='human', width=500, height=500):
        self._render_callback()
        if mode == 'rgb_array':
            self._get_viewer(mode).render(width, height)
            # window size used for old mujoco-py:
            data = self._get_viewer(mode).read_pixels(width, height, depth=False)
            # original image is upside-down, so flip it
            return data[::-1, :, :]
        elif mode == 'human':
            self._get_viewer(mode).render()

    def _get_viewer(self, mode):
        self.viewer = self._viewers.get(mode)
        if self.viewer is None:
            if mode == 'human':
                self.viewer = mujoco_py.MjViewer(self.sim)
            elif mode == 'rgb_array':
                self.viewer = mujoco_py.MjRenderContextOffscreen(self.sim, device_id=-1)
            self._viewer_setup()
            self._viewers[mode] = self.viewer
        return self.viewer
    
    def _render_callback(self):
            # Visualize target.
            sites_offset = (self.sim.data.site_xpos - self.sim.model.site_pos).copy()
            site_id = self.sim.model.site_name2id('target0')
            self.sim.model.site_pos[site_id] = self.goal - sites_offset[0]
            self.sim.forward()

    def _viewer_setup(self):
        body_id = self.sim.model.body_name2id('robot0:tool_link')
        lookat = self.sim.data.body_xpos[body_id]
        for idx, value in enumerate(lookat):
            self.viewer.cam.lookat[idx] = value
        self.viewer.cam.distance = 2.5
        self.viewer.cam.azimuth = 132.
        self.viewer.cam.elevation = -14.
#!/usr/bin/env python3
"""

Jose Edgar Hernandez Cancino Estrada
Instituto Tecnologico y de Estudios Superiores de Monterrey
A00827269
B.S. in Robotics and Digital Systems Engineering (June, 2024)
edgarcancinoe@gmail.com
a00827269@tec.mx

"""

import numpy as np
import math
from geometry_msgs.msg import Pose, Point
import time
# from control_msgs.msg import FollowJointTrajectoryAction, FollowJointTrajectoryGoal
# from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint

# Set starting position of robot
def set_starting_position(arm) -> None:

    joint_goal = arm.get_current_joint_values()
    joint_goal = [0, 0, 0, 0, -math.pi/2, 0]
    arm.go(joint_goal, wait=True)
    arm.stop()
    arm.clear_pose_targets()
    return

def move_xarm6(planner, goal, arm, client, strategy) -> None:

    # Go home position
    # print('Going back to home position')
    # joint_goal = [0, 0, 0, 0, -math.pi/2, 0]
    # arm.go(joint_goal, wait=True)
    # arm.stop()
    # arm.clear_pose_targets()

    # print('Done')
    
    # Get current arm position
    pose = arm.get_current_pose().pose.position
    joints = arm.get_current_joint_values()
    initial_qpos = {
            'robot0:slide0': 0.,
            'robot0:slide1': 0.,
            'robot0:slide2': 0.,
            'robot0:shoulder_pan_joint': joints[0],
            'robot0:shoulder_lift_joint': joints[1],
            'robot0:elbow_flex_joint': joints[2],
            'robot0:forearm_roll_joint': joints[3],
            'robot0:wrist_flex_joint': joints[4],
            'robot0:wrist_roll_joint': joints[5],
            'robot0:left_finger_joint': 0.0,
            'robot0:right_finger_joint': 0.0
        }
    # Construct observation in the policy format
    # Position and velocity corresponds to end effector data
    # obs = [pos_x, pos_y, pos_z, 0, 0, vel_x, vel_y, vel_z, 0, 0]
    obs = [pose.x, pose.y, pose.z, 0, 0, 0, 0, 0, 0, 0]

    # Call planner to get trajectory
    pos_trajectory, joint_states, success, n = planner.get_trajectory(initial_state = obs.copy(), target_position = goal.copy(), initial_qpos=initial_qpos.copy())

    if success:
        print("Trajectory found. Attempting to excecute path.")
        
        if strategy == "position":
        
            ### Plan Cartesian Path Based On Found Trajectory Waypoints ###
            waypoints = []
            waypoints.append(arm.get_current_pose().pose)
            for t in range(0, n, 2):
                pos = Pose(position=Point(x=pos_trajectory[t][0], y=pos_trajectory[t][1], z=pos_trajectory[t][2]), 
                        orientation=arm.get_current_pose().pose.orientation)
                waypoints.append(pos)
            
            if (n != 100) != 0:
                waypoints.append(Pose(position=Point(x=pos_trajectory[n-1][0], y=pos_trajectory[n-1][1], z=pos_trajectory[n-1][2]), 
                        orientation=arm.get_current_pose().pose.orientation))

            (plan, fraction) = arm.compute_cartesian_path(
                                        waypoints,   # waypoints to follow
                                        0.001,        # eef_step
                                        0.0)         # jump_threshold
            
            arm.execute(plan, wait=True)
            arm.stop()
            arm.clear_pose_targets()

            #################################################################
        elif strategy == "joints":
            ### Excecute movement based on joint positions ###

            ### Use client (real robot?)
            # joint_names = arm.get_active_joints()  # Get the names of the joints in the group
            # trajectory = JointTrajectory()
            # trajectory.joint_names = joint_names

            # waypoints = []
            # for t in range (0, n, 2):
            #     waypoint = JointTrajectoryPoint()
            #     waypoint.positions = joint_states[t][3:-2]
            #     waypoints.append(waypoint)
            
            # trajectory.points = waypoints

            # goal = FollowJointTrajectoryGoal()
            # goal.trajectory = trajectory

            # client.send_goal(goal)
            # client.wait_for_result()
            ########

            for t in range (0, n, 4):
                arm.go(joint_states[t][3:-2], wait=True)
                # time.sleep(1)
                if t >= n-4:
                    arm.go(joint_states[n-1][3:-2], wait = True)
                    # time.sleep(1)
            
            max_loop = 0
            while not np.allclose(arm.get_current_joint_values(), joint_states[n-1][3:-2], atol=0.02):   
                time.sleep(.2)   
                if max_loop == 100:
                    print("Couldn't reach target position.")
                    break
                max_loop += 1  
                continue

            arm.stop()
            arm.clear_pose_targets()
        
        ##################################################
        else:
            print("No path planning strategy chosen (joints/position).")
    else:
        print("Trajectory not found.")
   
    return
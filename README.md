# xArm6_DDPG_ROS

## General Description
Application of a Deep Deterministic Policy Gradient (DDPG) model with Hindsight Experience Replay to a xArm6 robotic arm in ROS noetic.

The Reinforcement Learning model was trained in a [Gym environment for the UFactory xArm6 robot](https://github.com/julio-design/xArm6-Gym-Env), 
but a different [DDPG + HER implementation](https://github.com/edgarcancinoe/xarm6_DDPG_HER) was used, based in the original enviroment's code and [OpenAI baseline's HER implementation](https://github.com/openai/baselines/tree/master/baselines/her).

#### Basic functionality
The ROS package _steady_trajectory_ demonstrates the use of a keras DDPG model (.pt) which computes a trajectory to get the xArm6's end effector from a starting position to and target, final position. The model outputs the necessary change in position for three dimensions (x,y,z) while mantaining a constant end effector's rotation.
In this implementation, as the trained model only provides the desired position of the end effector for each time step, once a target position is received, the ROS node uses mujoco-py simulation environment to excecute the model policy, and store both:
1. The followed path.
2. The joint rotations in radians for each of the arms joints.

These are later used to make the arm follow the desired trajectory in a Cartesian Path generated by the MoveIt motion planning framework.

## xArm6 in ROS

The ROS package [*steady_trajectories*](https://github.com/edgarcancinoe/xArm6_DDPG_ROS/tree/master/src/steady_trajectory) (_/src/steady_trajectory_) contains two main nodes:
- **target_generator**
  
  Randomly generate targets for the arm to reach and publishes into the '/target' node.
- **movement_generator**

  Actively listens to the '/target' node and once a target end-effector position is received, it uses the DDPG model to achieve the desired position.

The file _util.py_ contains functions used by the _movement_generator_ node, and the file _simulation.py_ contains the simulation class to generate the desired trajectories.

### Utilization of MoveIt motion planning framework
The employed model generates a path to follow from a starting and target position pair. It simulates the trajectory utilizing MujocoPy and stores every single position of the arm's
end effector from the start of the simulation, to the final target position.

Also, becasue a side goal of this implementation was to ensure the arm's end effector remains stable throughout its whole trajectory, once the full path is computed by the model, the positions are used as
waypoints to create a Cartesian Path using the *compute_cartesian_path()* function of the [MoveIt package for the xArm6](https://github.com/xArm-Developer/xarm_ros). 

### Usage
First, both [MoveIt](https://ros-planning.github.io/moveit_tutorials/doc/getting_started/getting_started.html) and the [xArm developer package](https://github.com/xArm-Developer/xarm_ros) must be installed in the workspace.
To run the code, one launch and two nodes shall be run consecutively:
1. Run the RViz simulation node for the xAm6:
   ```
   roslaunch xarm_planner xarm_planner_rviz_sim.launch robot_dof:=6 robot_type:=xarm add_gripper:=true
   ```
2. In another terminal, run the _target_generator_ node. This node generates random position targets for the robot to reach.
   ```
   rosrun steady_trajectory target_generator.py
   ```
3. Open a third terminal and run the _movement_generator_ node. This node will position the arm into its home starting position and then will listen for targets.
   ```
   rosrun steady_trajectory movement_generator.py
   ```

## Results

Cartesian path following position waypoints             |  Consecutively setting joint pose
:-------------------------:|:-------------------------:
![](https://github.com/edgarcancinoe/xArm6_DDPG_ROS/blob/master/results.gif) |   ![](https://github.com/edgarcancinoe/xArm6_DDPG_ROS/blob/master/jointsReachROS.gif)


## Requirements
##### ROS
- ROS Noetic
- std_msgs
- geometry_msgs
  
##### Python
- pytorch===2.0.1+cu117
- mujoco-py===2.1.2.14
- numpy===1.24.4
- rospy
- moveit_commander

## Reference links
- https://github.com/xArm-Developer/xarm_ros
- https://ros-planning.github.io/moveit_tutorials/doc/getting_started/getting_started.html
- https://github.com/julio-design/xArm6-Gym-Env
- https://github.com/edgarcancinoe/xarm6_DDPG_HER/tree/master

---

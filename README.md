# xArm6_DDPG_ROS

## General Description
Application of a Deep Deterministic Policy Gradient (DDPG) model with Hindsight Experience Replay to a xArm6 robotic arm in ROS noetic.

The Reinforcement Learning model was trained in a [Gym environment for the UFactory xArm6 robot](https://github.com/julio-design/xArm6-Gym-Env), 
but a different [DDPG + HER implementation](https://github.com/edgarcancinoe/xarm6_DDPG_HER) was used, based in the original enviroment's code and [OpenAI baseline's HER implementation](https://github.com/openai/baselines/tree/master/baselines/her).

## xArm6 in ROS

The ROS package [*steady_trajectories*](https://github.com/edgarcancinoe/xArm6_DDPG_ROS/tree/master/src/steady_trajectory) (_/src/steady_trajectory_) contains two main nodes:
- _target_generator_
  
  Randomly generate targets for the arm to reach and publishes into the '/target' node.
  
- _movement_generator_
  
  Actively listens to the '/target' node and once a target end-effector position is received, it uses the DDPG model to achieve the desired position.

The file _util.py_ contains functions used by the _movement_generator_ node, and the file _simulation.py_ contains the simulation class to generate the desired trajectories.

### Utilization of MoveIt motion planning framework
The employed model generates a path to follow from a starting and target position pair. It simulates the trajectory utilizing MujocoPy and stores every single position of the arm's
end effector from the start of the simulation, to the final target position.

Also, becasue a side goal of this implementation was to ensure the arm's end effector remains stable throughout its whole trajectory, once the full path is computed by the model, the positions are used as
waypoints to create a Cartesian Path using the *compute_cartesian_path()* function of the [MoveIt package for the xArm6](https://github.com/xArm-Developer/xarm_ros). 

### Usage
To run the code, one launch and two nodes shall be run consecutively:
1. Run the RViz simulation node for the xAm6:
   ```
   roslaunch xarm_planner xarm_planner_rviz_sim.launch robot_dof:=6 robot_type:=xarm add_gripper:=true
   ```
2. Run the _target_generator_ node. This node generates random position targets for the robot to reach.
   ```
   rosrun steady_trajectory target_generator.py
   ```
3. Run the _movement_generator_ node. This node will position the arm into its home starting position and then will listen for targets.
   ```
   rosrun steady_trajectory movement_generator.py
   ```
   
---

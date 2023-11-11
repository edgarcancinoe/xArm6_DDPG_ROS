# xArm6_DDPG_ROS
Application of a Deep Deterministic Policy Gradient (DDPG) model with Hindsight Experience Replay to a xArm6 robotic arm in ROS noetic.

## General Description
The Reinforcement Learning model was trained in a [Gym environment for the UFactory xArm6 robot](https://github.com/julio-design/xArm6-Gym-Env), 
but a [different DDPG + HER implementation](https://google.com) was utilized.

## xArm6 in ROS

The package *steady_trajectories* contains two main nodes:
- _target_generator_: Randomly generate targets for the arm to reach and publishes into the '/target' node.
- _movement_generator_: Actively listens to the '/target' node and once a target end-effecor position is received, it uses the DDPG model to achieve the desired position.

The file _util.py_ contains functions used by the _movement_generator_ node, and the file _simulation.py_ contains the simulation class to generate the desired trajectories.

### Usage of MoveIt motion planning framework
The employed model generates a path to follow from a starting and target position pair. It simulates the trajectory utilizing MujocoPy and stores every single position of the arm's
end effector from the start of the simulation, to the final target position.

As a side goal of this implementation was to ensure the arm's end effector remains stable throughout its whole trajectory, once the full trajectory is computed by the model, the positions are used as
waypoints to create a Cartesian Path using the compute_cartesian_path() function of the MoveIt package for the xArm6. 

---

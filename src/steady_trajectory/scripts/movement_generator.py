#!/usr/bin/env python3

"""Torch .pt model to ROS using MoveIt commander

Jose Edgar Hernandez Cancino Estrada
Instituto Tecnologico y de Estudios Superiores de Monterrey
A00827269
B.S. in Robotics and Digital Systems Engineering (June, 2024)
edgarcancinoe@gmail.com
a00827269@tec.mx

"""

# roslaunch xarm6_moveit_config demo.launch add_gripper:=true

############################# Import modules #############################
# Python modules
import os
import sys
import numpy as np
import torch
import time
import random

# Simulation
from simulation import TrajectoryPlanner
from actor_network import ActorNetwork

# Import ROS and robot modules
import rospy
import moveit_commander
# import actionlib
from geometry_msgs.msg import Pose, PoseStamped
from std_msgs.msg import Bool

# Import useful functions
from util import set_starting_position, move_xarm6

#################### Useful variables definition ########################

params = {'alpha': 0.001,
        'obs_shape': 10,
        'goal_shape': 3,
        'n_actions': 4,
        'max_action': 1.0, 
        'clip_obs': 200,
        'clip_range': 5.0,
        'n_substeps': 30,
        'max_n_timesteps': 100,
        # 'gripper_extra_height':,
        'MODEL_XML_PATH': os.path.normpath(os.path.join(__file__, '../../src/assets/reach.xml')),
        # 'env_name': 'xArm6Reach-v1',
        'policy_path': os.path.normpath(os.path.join(__file__, '../../src/models/model0.pt'))}

initial_qpos = {
            'robot0:slide0': 0.,
            'robot0:slide1': 0.,
            'robot0:slide2': 0.,
            'robot0:shoulder_pan_joint': 0.,
            'robot0:shoulder_lift_joint': 0.,
            'robot0:elbow_flex_joint': 0.,
            'robot0:forearm_roll_joint': 0.,
            'robot0:wrist_flex_joint': -1.5707329355919546,
            'robot0:wrist_roll_joint': 0.,
            'robot0:left_finger_joint': 0.0,
            'robot0:right_finger_joint': 0.0
        }

# Whether robot is ready to receive targets
ready = False
path_strategy = "position"
# path_strategy = "joints"

#########################################################################

######################## TrajectoryPlanner Class ########################
"""
    This class is in charge of producing the robot's trajectory to achive
    the desired goal.

"""

trajectoryPlanner = TrajectoryPlanner(params, initial_qpos)

#########################################################################

########################### Callback functions ##########################

def target_callback(msg) -> None:
    global scene, robot, trajectoryPlanner, arm, ready, client, path_strategy
    ready = False

    # Acknowledge target recieved
    print('Target received: \n', [msg.position.x, msg.position.y, msg.position.z])
    print()
    
    # Insert box at target position
    p = PoseStamped()
    p.header.frame_id = robot.get_planning_frame()
    p.pose.position.x = msg.position.x
    p.pose.position.y = msg.position.y
    p.pose.position.z = msg.position.z
    scene.add_box("Box", p, size=(0.012, 0.012, 0.012))

    # Launch movement sequence
    goal = [msg.position.x, msg.position.y, msg.position.z]
    move_xarm6(trajectoryPlanner, goal, arm, client, path_strategy)

    # Change status to ready
    ready = True
    return


#########################################################################

###################### ROS & MoveIt initialization #####################
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('movement_generator', anonymous=True)

status_pub = rospy.Publisher('/status', Bool, queue_size=10)
rospy.Subscriber('/target', Pose, target_callback)

#########################################################################

if __name__ == '__main__':
    try:
        ## Instantiate a RobotCommander object. Provides information such as the robot's
        ## kinematic model and the robot's current joint states
        robot = moveit_commander.RobotCommander()
        ## PlanningSceneInterface Object to add target box
        scene = moveit_commander.PlanningSceneInterface()

        ## Instantiate a `MoveGroupCommander`_ object.  This object is an interface
        ## to a planning group (group of joints).
        group_name = "xarm6"
        arm = moveit_commander.MoveGroupCommander(group_name)
        
        # Create client
        # from control_msgs.msg import FollowJointTrajectoryAction, FollowJointTrajectoryGoal
        # from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint

        # client = actionlib.SimpleActionClient(group_name + '/follow_joint_trajectory', FollowJointTrajectoryAction)
        # client.wait_for_server()
        client = None

        # Position robot into starting position
        set_starting_position(arm)
        
        # Send target node 'ready' signal
        ready = True
        status_pub.publish(ready)

        # Start listening - acting process
        print('Listening for targets...')
        while not rospy.is_shutdown():
            # Everytime a new target is received through the
            # 'target' channel, target_callback function is called.
            time.sleep(3)
            status_pub.publish(ready)
            continue
            
        # Clean up
        moveit_commander.roscpp_shutdown()

    except rospy.ROSInterruptException:
        pass

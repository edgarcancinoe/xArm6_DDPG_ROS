#!/usr/bin/env python3

"""Goal generator

Jose Edgar Hernandez Cancino Estrada
B.S. in Robotics and Digital Systems Engineering (June, 2024)
Tecnologico de Monterrey
edgarcancinoe@gmail.com
a00827269@tec.mx

"""

import sys
import rospy
from geometry_msgs.msg import Pose
from std_msgs.msg import Bool
import numpy as np

# Status variable to know whether robot is ready to recieve targets
global ready 
ready = False

# Useful functions

# Generate target
def _generate_target(x_min=0.5, x_max=.62, y_min=-0.3, y_max=0.3, z_min=0.15, z_max=0.35):
    target = Pose()
    
    target.position.x = np.random.uniform(x_min, x_max, size=1)[0]
    target.position.y = np.random.uniform(y_min, y_max, size=1)[0]
    target.position.z = np.random.uniform(z_min, z_max, size=1)[0]

    return target

# Status callback, recieve signal that robot is ready to recieve targets in '/status' channel
def status_callback(msg):
    global ready
    if msg.data == True:
        ready = True


# Init ROS node
rospy.init_node('target_generator')

# Publisher / listeners

# Define target publisher
target_pub = rospy.Publisher('/target', Pose, queue_size=10)

# Define robot status subscriber
rospy.Subscriber('/status', Bool, status_callback)


if __name__ == '__main__':
    try:
        while not rospy.is_shutdown():
            # Wait until robot is ready to get a new target
            print("Target generator ready")

            while not ready:
                if rospy.is_shutdown():
                    break
                continue

            if not rospy.is_shutdown():
                # Generate random target
                target = _generate_target()

                # Publish target to '/target' channel
                target_pub.publish(target)
                ready = False

    except rospy.ROSInterruptException:
        pass

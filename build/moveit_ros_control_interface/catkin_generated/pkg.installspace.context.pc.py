# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;controller_manager_msgs;moveit_core;trajectory_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmoveit_ros_control_interface_plugin;-lmoveit_ros_control_interface_trajectory_plugin;/usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0".split(';') if "-lmoveit_ros_control_interface_plugin;-lmoveit_ros_control_interface_trajectory_plugin;/usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0" != "" else []
PROJECT_NAME = "moveit_ros_control_interface"
PROJECT_SPACE_DIR = "/home/edgarcancinoe/xarm6/catkin_ws/install"
PROJECT_VERSION = "1.1.13"

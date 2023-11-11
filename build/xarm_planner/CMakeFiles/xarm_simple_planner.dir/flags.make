# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# compile CXX with /usr/bin/c++
CXX_DEFINES = -DROSCONSOLE_BACKEND_LOG4CXX -DROS_BUILD_SHARED_LIBS=1 -DROS_PACKAGE_NAME=\"xarm_planner\"

CXX_INCLUDES = -I/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/xarm_planner/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/xarm_ros/xarm_planner/include -I/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_core/include -I/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_msgs/include -I/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning/include -I/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_manipulation/include -I/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/xarm_msgs/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/geometric_shapes/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/rviz_visual_tools/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/srdfdom/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/background_processing/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/exceptions/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/backtrace/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/collision_detection/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/collision_detection_fcl/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/collision_detection_bullet/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/constraint_samplers/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/controller_manager/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/distance_field/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/collision_distance_field/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/dynamics_solver/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/kinematics_base/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/kinematics_metrics/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/robot_model/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/transforms/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/robot_state/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/robot_trajectory/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/kinematic_constraints/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/macros/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/planning_interface/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/planning_request_adapter/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/planning_scene/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/profiler/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/python/tools/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/sensor_manager/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/trajectory_processing/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_core/utils/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/occupancy_map_monitor/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning/rdf_loader/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning/kinematics_plugin_loader/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning/robot_model_loader/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning/constraint_sampler_manager_loader/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning/planning_pipeline/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning/planning_scene_monitor/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning/trajectory_execution_manager/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning/plan_execution/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning/collision_plugin_loader/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning/moveit_cpp/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/move_group/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/manipulation/pick_place/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/manipulation/move_group_pick_place_capability/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/warehouse/warehouse/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning_interface/py_bindings_tools/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning_interface/common_planning_interface_objects/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning_interface/planning_scene_interface/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/planning_interface/move_group_interface/include -I/home/edgarcancinoe/xarm6/catkin_ws/src/moveit_visual_tools/include -I/opt/ros/noetic/include -I/opt/ros/noetic/share/xmlrpcpp/cmake/../../../include/xmlrpcpp -I/usr/include/eigen3 -I/usr/include/bullet -I/usr/include/OGRE

CXX_FLAGS = -O3 -DNDEBUG -std=gnu++11


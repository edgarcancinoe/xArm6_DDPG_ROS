# Install script for directory: /home/edgarcancinoe/xarm6/catkin_ws/src/xarm_ros/xarm_planner

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/edgarcancinoe/xarm6/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edgarcancinoe/xarm6/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE PROGRAM FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/_setup_util.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edgarcancinoe/xarm6/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE PROGRAM FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/env.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edgarcancinoe/xarm6/catkin_ws/install/setup.bash;/home/edgarcancinoe/xarm6/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE FILE FILES
    "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/setup.bash"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edgarcancinoe/xarm6/catkin_ws/install/setup.sh;/home/edgarcancinoe/xarm6/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE FILE FILES
    "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/setup.sh"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edgarcancinoe/xarm6/catkin_ws/install/setup.zsh;/home/edgarcancinoe/xarm6/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE FILE FILES
    "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/setup.zsh"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edgarcancinoe/xarm6/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE FILE FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/.rosinstall")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xarm_planner/srv" TYPE FILE FILES
    "/home/edgarcancinoe/xarm6/catkin_ws/src/xarm_ros/xarm_planner/srv/pose_plan.srv"
    "/home/edgarcancinoe/xarm6/catkin_ws/src/xarm_ros/xarm_planner/srv/joint_plan.srv"
    "/home/edgarcancinoe/xarm6/catkin_ws/src/xarm_ros/xarm_planner/srv/exec_plan.srv"
    "/home/edgarcancinoe/xarm6/catkin_ws/src/xarm_ros/xarm_planner/srv/single_straight_plan.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xarm_planner/cmake" TYPE FILE FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/xarm_planner-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/xarm_planner/include/xarm_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/xarm_planner/share/roseus/ros/xarm_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/xarm_planner/share/common-lisp/ros/xarm_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/xarm_planner/share/gennodejs/ros/xarm_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/xarm_planner/lib/python3/dist-packages/xarm_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/xarm_planner/lib/python3/dist-packages/xarm_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/xarm_planner.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xarm_planner/cmake" TYPE FILE FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/xarm_planner-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xarm_planner/cmake" TYPE FILE FILES
    "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/xarm_plannerConfig.cmake"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/catkin_generated/installspace/xarm_plannerConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xarm_planner" TYPE FILE FILES "/home/edgarcancinoe/xarm6/catkin_ws/src/xarm_ros/xarm_planner/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xarm_planner" TYPE DIRECTORY FILES "/home/edgarcancinoe/xarm6/catkin_ws/src/xarm_ros/xarm_planner/launch")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/xarm_planner" TYPE EXECUTABLE FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/xarm_planner/lib/xarm_planner/xarm_simple_planner")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner"
         OLD_RPATH "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_visual_tools/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/rviz_visual_tools/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning_interface/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_warehouse/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_manipulation/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_move_group/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_core/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/srdfdom/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/geometric_shapes/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner_test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner_test")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner_test"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/xarm_planner" TYPE EXECUTABLE FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/xarm_planner/lib/xarm_planner/xarm_simple_planner_test")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner_test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner_test")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner_test"
         OLD_RPATH "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_visual_tools/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/rviz_visual_tools/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning_interface/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_warehouse/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_manipulation/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_move_group/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_core/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/srdfdom/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/geometric_shapes/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_simple_planner_test")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_gripper_planner" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_gripper_planner")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_gripper_planner"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/xarm_planner" TYPE EXECUTABLE FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/xarm_planner/lib/xarm_planner/xarm_gripper_planner")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_gripper_planner" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_gripper_planner")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_gripper_planner"
         OLD_RPATH "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_visual_tools/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/rviz_visual_tools/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning_interface/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_warehouse/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_manipulation/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_move_group/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_core/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/srdfdom/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/geometric_shapes/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/xarm_planner/xarm_gripper_planner")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/edgarcancinoe/xarm6/catkin_ws/build/xarm_planner/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

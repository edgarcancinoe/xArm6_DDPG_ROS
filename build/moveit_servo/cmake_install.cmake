# Install script for directory: /home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/moveit_servo

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
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE PROGRAM FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/_setup_util.py")
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
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE PROGRAM FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/env.sh")
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
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/setup.bash"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/local_setup.bash"
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
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/setup.sh"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/local_setup.sh"
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
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/setup.zsh"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/local_setup.zsh"
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
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE FILE FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/.rosinstall")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/moveit_servo.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_servo/cmake" TYPE FILE FILES
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/moveit_servoConfig.cmake"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/catkin_generated/installspace/moveit_servoConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_servo" TYPE FILE FILES "/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/moveit_servo/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_servo_cpp_api.so.1.1.13" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_servo_cpp_api.so.1.1.13")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_servo_cpp_api.so.1.1.13"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_servo/lib/libmoveit_servo_cpp_api.so.1.1.13")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_servo_cpp_api.so.1.1.13" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_servo_cpp_api.so.1.1.13")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_servo_cpp_api.so.1.1.13"
         OLD_RPATH "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning_interface/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_warehouse/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_manipulation/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_move_group/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_core/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/srdfdom/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/geometric_shapes/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_servo_cpp_api.so.1.1.13")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_servo/lib/libmoveit_servo_cpp_api.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_tracking.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_tracking.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_tracking.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_servo/lib/libpose_tracking.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_tracking.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_tracking.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_tracking.so"
         OLD_RPATH "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning_interface/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_warehouse/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_manipulation/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_move_group/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_core/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/srdfdom/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/geometric_shapes/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_servo/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_tracking.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/pose_tracking_example" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/pose_tracking_example")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/pose_tracking_example"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/moveit_servo" TYPE EXECUTABLE FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_servo/lib/moveit_servo/pose_tracking_example")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/pose_tracking_example" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/pose_tracking_example")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/pose_tracking_example"
         OLD_RPATH "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning_interface/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_warehouse/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_manipulation/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_move_group/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_core/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/srdfdom/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/geometric_shapes/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_servo/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/pose_tracking_example")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/servo_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/servo_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/servo_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/moveit_servo" TYPE EXECUTABLE FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_servo/lib/moveit_servo/servo_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/servo_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/servo_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/servo_server"
         OLD_RPATH "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_servo/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning_interface/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_warehouse/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_manipulation/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_move_group/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_core/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/srdfdom/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/geometric_shapes/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/servo_server")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/spacenav_to_twist" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/spacenav_to_twist")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/spacenav_to_twist"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/moveit_servo" TYPE EXECUTABLE FILES "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_servo/lib/moveit_servo/spacenav_to_twist")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/spacenav_to_twist" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/spacenav_to_twist")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/spacenav_to_twist"
         OLD_RPATH "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning_interface/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_warehouse/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_manipulation/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_move_group/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_planning/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_core/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/srdfdom/lib:/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/geometric_shapes/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_servo/spacenav_to_twist")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/moveit_servo" TYPE DIRECTORY FILES "/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/moveit_servo/include/moveit_servo/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_servo" TYPE DIRECTORY FILES "/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/moveit_servo/launch")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_servo" TYPE DIRECTORY FILES "/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_ros/moveit_servo/config")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_servo/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

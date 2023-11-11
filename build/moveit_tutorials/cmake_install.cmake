# Install script for directory: /home/edgarcancinoe/xarm6/catkin_ws/src/moveit_tutorials

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
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE PROGRAM FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/_setup_util.py")
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
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE PROGRAM FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/env.sh")
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
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/setup.bash"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/local_setup.bash"
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
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/setup.sh"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/local_setup.sh"
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
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/setup.zsh"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/local_setup.zsh"
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
  file(INSTALL DESTINATION "/home/edgarcancinoe/xarm6/catkin_ws/install" TYPE FILE FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/.rosinstall")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/moveit_tutorials.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_tutorials/cmake" TYPE FILE FILES
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/moveit_tutorialsConfig.cmake"
    "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/catkin_generated/installspace/moveit_tutorialsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_tutorials" TYPE FILE FILES "/home/edgarcancinoe/xarm6/catkin_ws/src/moveit_tutorials/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/gtest/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/controller_configuration/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/hand_eye_calibration/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/interactivity/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/kinematics/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/motion_planning_api/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/motion_planning_pipeline/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/move_group_interface/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/move_group_python_interface/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/perception_pipeline/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/pick_place/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/planning/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/planning_scene/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/planning_scene_ros_api/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/robot_model_and_robot_state/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/state_display/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/subframes/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/tests/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/trajopt_planner/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/creating_moveit_plugins/lerp_motion_planner/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/moveit_cpp/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/collision_environments/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/visualizing_collisions/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/bullet_collision_checker/cmake_install.cmake")
  include("/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/doc/mesh_filter/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_tutorials/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

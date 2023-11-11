execute_process(COMMAND "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_core/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_core/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

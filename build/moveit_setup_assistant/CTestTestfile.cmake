# CMake generated Testfile for 
# Source directory: /home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_setup_assistant
# Build directory: /home/edgarcancinoe/xarm6/catkin_ws/build/moveit_setup_assistant
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_moveit_setup_assistant_gtest_test_reading_writing_config "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_setup_assistant/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_setup_assistant/test_results/moveit_setup_assistant/gtest-test_reading_writing_config.xml" "--return-code" "/home/edgarcancinoe/xarm6/catkin_ws/devel/.private/moveit_setup_assistant/lib/moveit_setup_assistant/test_reading_writing_config --gtest_output=xml:/home/edgarcancinoe/xarm6/catkin_ws/build/moveit_setup_assistant/test_results/moveit_setup_assistant/gtest-test_reading_writing_config.xml")
set_tests_properties(_ctest_moveit_setup_assistant_gtest_test_reading_writing_config PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_setup_assistant/CMakeLists.txt;159;catkin_add_gtest;/home/edgarcancinoe/xarm6/catkin_ws/src/moveit/moveit_setup_assistant/CMakeLists.txt;0;")
subdirs("gtest")

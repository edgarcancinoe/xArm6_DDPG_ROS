# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "descartes_core;descartes_trajectory;roscpp".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ldescartes_planner".split(';') if "-ldescartes_planner" != "" else []
PROJECT_NAME = "descartes_planner"
PROJECT_SPACE_DIR = "/home/edgarcancinoe/xarm6/catkin_ws/install"
PROJECT_VERSION = "0.0.1"

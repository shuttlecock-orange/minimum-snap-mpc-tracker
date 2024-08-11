# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "costmap_2d;dynamic_reconfigure;geometry_msgs;move_base;roscpp;rospy;std_msgs;tf;visualization_msgs;pluginlib".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmpc_ros".split(';') if "-lmpc_ros" != "" else []
PROJECT_NAME = "mpc_ros"
PROJECT_SPACE_DIR = "/home/czj/MPC_ws/install"
PROJECT_VERSION = "0.0.0"

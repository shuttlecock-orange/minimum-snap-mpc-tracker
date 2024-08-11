# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "geometry_msgs;nav_msgs;roscpp;sensor_msgs;std_msgs;tf;servingbot_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lservingbot_fake_node".split(';') if "-lservingbot_fake_node" != "" else []
PROJECT_NAME = "servingbot_fake"
PROJECT_SPACE_DIR = "/home/czj/MPC_ws/install"
PROJECT_VERSION = "0.1.0"

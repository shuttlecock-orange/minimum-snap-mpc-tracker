# minimum-snap-mpc_tracker
# minimum-snap

##gazebo仿真环境
roslaunch tianracer_gazebo demo_tianracer_teb_nav.launch
##MPC路径追踪
roslaunch mpc_tracker mpc_tracker.launch 
##minimum snap路径规划
roslaunch waypoint_trajectory_generator test.launch

rostopic echo /tianracer/ackermann_cmd_stamped#速度话题

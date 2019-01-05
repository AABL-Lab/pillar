#!/bin/bash
#
# Useful command-line aliases for the Poli2 platform. Feel free to improve and extend!
# Author: Adam Allevato
# Creation Date: Jan 05 2019

# Bringup
alias up='roslaunch poli2_launch machine1.launch start_manipulation:=true'

# Gripper
alias gripper_open='rostopic pub /gripper/cmd robotiq_85_msgs/GripperCmd "{emergency_release: false, emergency_release_dir: 0, stop: false, position: 1.0, speed: 1.0,
  force: 0.0}"'
alias gripper_close='rostopic pub /gripper/cmd robotiq_85_msgs/GripperCmd "{emergency_release: false, emergency_release_dir: 0, stop: false, position: 0.0, speed: 1.0,
  force: 0.0}"'

# Force Control
alias force_control_start='rosservice call /j2s7s300_driver/in/start_force_control'
alias force_control_stop='rosservice call /j2s7s300_driver/in/stop_force_control'

# Gravity Compensation
alias grav_comp_start='rosservice call /j2s7s300_driver/in/start_gravity_comp'
alias grav_comp_stop='rosservice call /j2s7s300_driver/in/stop_gravity_comp'
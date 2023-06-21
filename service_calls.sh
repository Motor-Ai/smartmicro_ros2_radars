#!/bin/bash

# To disable CAN output
# ros2 service call /smart_radar/set_radar_mode umrr_ros2_msgs/srv/SetMode "{param: "output_control_target_list_can", value: 0, sensor_id: 107}"

# To set sync. master (only to master)
ros2 service call /smart_radar/set_radar_mode umrr_ros2_msgs/srv/SetMode "{param: "sync_mode", value: 1, sensor_id: 107}"

# To set no. of sync slaves in group-1 (only to master)
ros2 service call /smart_radar/set_radar_mode umrr_ros2_msgs/srv/SetMode "{param: "sync_nof_devices_1st_group", value: 1, sensor_id: 107}"

# To set no. of sync slaves in group-2 (only to master)
ros2 service call /smart_radar/set_radar_mode umrr_ros2_msgs/srv/SetMode "{param: "sync_nof_devices_2nd_group", value: 0, sensor_id: 107}"

# To set no. of time sync. devices (only to master)
ros2 service call /smart_radar/set_radar_mode umrr_ros2_msgs/srv/SetMode "{param: "time_sync_nof_devices", value: 1, sensor_id: 107}"

# To set sync. slaves
ros2 service call /smart_radar/set_radar_mode umrr_ros2_msgs/srv/SetMode "{param: "sync_mode", value: 2, sensor_id: 101}"

# To set sync. slave id
ros2 service call /smart_radar/set_radar_mode umrr_ros2_msgs/srv/SetMode "{param: "sync_slave_identifier", value: 1, sensor_id: 101}"

# To set sync. group identifier
ros2 service call /smart_radar/set_radar_mode umrr_ros2_msgs/srv/SetMode "{param: "sync_group_identifier", value: 0, sensor_id: 101}"

# To set time sync
ros2 service call /smart_radar/set_radar_mode umrr_ros2_msgs/srv/SetMode "{param: "time_sync_mode", value: 1, sensor_id: 107}"
ros2 service call /smart_radar/set_radar_mode umrr_ros2_msgs/srv/SetMode "{param: "time_sync_mode", value: 2, sensor_id: 101}"

# To set global UTC time (only to master) (run both commands below in order)
ros2 service call /smart_radar/set_time_to_sys umrr_ros2_msgs/srv/SetTimeToSys "{param: "comp_timebase_set_seconds_val", sensor_id: 101}"
ros2 service call /smart_radar/set_time_to_sys umrr_ros2_msgs/srv/SetTimeToSys "{param: "comp_timebase_set_frac_seconds_val", sensor_id: 101}"

# To save the paremeters to persistent memory (to all the sensors)
ros2 service call /smart_radar/send_command umrr_ros2_msgs/srv/SendCommand "{command: "comp_eeprom_ctrl_save_param_sec", sensor_id: 100}"

# To change ip address of the sensor
ros2 service call /smart_radar/set_ip_address umrr_ros2_msgs/srv/SetIp "{value_ip: 3232238400, sensor_id: 100}"

# ip 	       | decimal	
# 192.168.11.1 = 3232238337
# 192.168.11.2 = 3232238338
# 192.168.11.3 =? 
# 192.168.11.4 =? 
# 192.168.11.5 =? 
# 192.168.11.6 =? 
# 192.168.11.7 =? 
# 192.168.11.8 =? 

# 192.168.11.21 = 3232238357
# 192.168.11.22 = 3232238358
# 192.168.11.23 = 3232238359
# 192.168.11.24 = 3232238360
# 192.168.11.25 = 3232238361
# 192.168.11.26 = 3232238362


OPEN_COMMAND="gnome-terminal"

#Launch the Rosbridge and the Marker topic at r instace for each ros core 
OPEN_COMMAND="$OPEN_COMMAND --tab -t RosCore_Marker -e 'bash -c \"export ROS_MASTER_URI=http://localhost:11011; roscore -p 11011;\"'"
OPEN_COMMAND="$OPEN_COMMAND --tab -t Rosbridge_Marker -e 'bash -c \"sleep 10s; export ROS_MASTER_URI=http://localhost:11011; rosparam set /rosbridge/port 5050; rosrun rosbridge_server rosbridge.py; exec bash\"'"
OPEN_COMMAND="$OPEN_COMMAND --tab -t Simple_Marker_Node -e 'bash -c \"sleep 10s; export ROS_MASTER_URI=http://localhost:11011; rosrun using_markers basic_shapes; exec bash\"'"



eval $OPEN_COMMAND


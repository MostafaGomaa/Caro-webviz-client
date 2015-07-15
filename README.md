# Caro-webviz-client
The Web interface using Ros3D.js and some required packages


###Vedio Demo:
https://drive.google.com/file/d/0BwzXji2vQ585S3NrdGFDd2xvTVU/view?usp=sharing

##Packages
* web-interface: contains the web interfaces and the JavaScript used
* [using_markers] a Ros node that creates a simple marker to be used in the visulization. The marker topic is published on the client Ros to save bandwidth (which means that the client should have Ros installed).

###Installation:
* Add your directory that contains the packages as a $ROS_PACKAGE_PATH in the .bashrc
```
export ROS_PACKAGE_PATH=~/YOUR_PATH/Caro-webviz-client:$ROS_PACKAGE_PATH
```

* Navigate to the package directory and rosmake the Simple Marker packages 
```
cd ~/YOUR_PATH/Caro-webviz-client/using_markers
rosmake
```

###Incase client each agent on a separate machine.

### Configuration:
* Replace the comminted websocket uri in file the web-interfac/3markers_Multi.html with your agents uri and the rosbridge_server port.
. for example:
```
var ros_R1 = new ROSLIB.Ros({
//  url : 'ws://YOUR_FIRST_AGENT_URI:ROSBRIDGE_SERVERPORT'
    url : 'ws://enterprise.kbsg.rwth-aachen.de:9090'

```

### Run:
* run the simple marker to publish the marker topic
```
rosrun using_markers basic_shapes
```

*Run web-interface/3markers_Multi.html on your browser




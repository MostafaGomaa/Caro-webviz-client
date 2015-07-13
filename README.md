# Caro-webviz-client
The Web interface using Ros3D.js and some required packages

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

### Configuration:
###Incase of each agent on a separate machine.
* Replace the comminted websocket uri in file the web-interfac/3markers_Multi.html with your agents uri
**for example
```
var ros_R1 = new ROSLIB.Ros({
    //  url : 'ws://YOUR_FIRST_AGENT_URI:9090'
    url : 'ws://enterprise.kbsg.rwth-aachen.de:9090'

```

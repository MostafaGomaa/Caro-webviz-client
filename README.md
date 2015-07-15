# Caro-webviz-client
The Web interface using Ros3D.js and some required packages


###Vedio Demo:
https://drive.google.com/file/d/0BwzXji2vQ585S3NrdGFDd2xvTVU/view?usp=sharing

##Packages
* [web-interface] (web-interface): contains the web interfaces and the JavaScript used
* [using_markers] (using_markers) a Ros node that creates a simple markers to be used in the visulization. The marker topic is published on the client Ros to save bandwidth (which means that the client should have Ros installed).

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

### Setup the simple marker:
* Here we chose to run the marker node on a separate RosCore hosted on the client side and setup a Rosbrdige server to communicate with it. This should save the bandwidth required to communicate the markers information from beeing sent by each agent decreasing the network communication needed. Only brawback is the configration overhead needed to setup a RosCore and a Rosbridge instance on the client side.

Setup the rosbride (similare to whats done in [Caro-webviz-server](https://github.com/MostafaGomaa/Caro-webviz-server/blob/master/README.md) ) on the client side in case you dont already have one.

* Run the RoseCore, Rosbridge and the simple_markers on the client side. Run each on a seperate terminal.

** Roscore
```
export ROS_MASTER_URI= localhost:11011
roscore
```

** Rosbridge on a free port
```
export ROS_MASTER_URI= localhost:11011
rosparam set /rosbridge/port 1010
rosrun rosbridge_server rosbridge.py
```

** Simple_markers
```
export ROS_MASTER_URI= localhost:11011
rosrun using_markers basic_shapes
```


### Configuration the web interface:
* From web-interfac/3markers_Multi.html. Replace the comminted websocket uri with your agent's rosbride uri.
. for example:
```
var ros_R1 = new ROSLIB.Ros({
//  url : 'ws://YOUR_FIRST_AGENT_IP:ROSBRIDGE_SERVERPORT'
    url : 'ws://enterprise.kbsg.rwth-aachen.de:9090'

```


###Run the web interface
*Run web-interface/3markers_Multi.html on your browser




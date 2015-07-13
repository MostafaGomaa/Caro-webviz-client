# Caro-webviz-client
The Web interface using Ros3D.js and some required packages

##Packages
* web-interface: contains the web interfaces and the JavaScript used
* [using_markers] a Ros node that creates a simple marker to be used in the visulization. The marker topic is published on the client Ros to save bandwidth (which means that the client should have Ros installed).

###Installation:
* Add your directory that contains the packages as a $ROS_PACKAGE_PATH in the .bashrc
```
export ROS_PACKAGE_PATH=~/(YOUR_caro-webviz-client_DIR):$ROS_PACKAGE_PATH
```

* Navigate to the package directory and rosmake the Simple Marker packages (here it is ~/Caro-webviz-client)
```
cd ~/Caro-webviz-server/using_markers
rosmake
```

### Configuration:
* Replace the comminted websocket uri in file the web-interfac/3markers.html with your agents uri
**for example
```

```

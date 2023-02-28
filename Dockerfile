FROM osrf/ros:melodic-desktop-full

RUN apt-get update
RUN apt-get install -y git python3-pip

# Add catkin workspace
RUN mkdir -p /root/catkin_ws/src

# Add ROS packages
WORKDIR /root/catkin_ws/src

# PX4
RUN git clone https://github.com/PX4/PX4-Autopilot.git --recursive

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN echo "DONE!"
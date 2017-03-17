sudo update-locale LANG=C LANGUAGE=C LC_ALL=C LC_MESSAGES=POSIX

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -
sudo apt-get -y update
sudo apt-get -y install ros-indigo-desktop
sudo apt-get -y install python-rosdep
sudo rosdep init
rosdep update
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc
source /opt/ros/indigo/setup.bash
sudo apt-get -y install python-rosinstall

#tool
sudo apt-get -y install ros-indigo-rqt-ez-publisher
sudo apt-get -y install ros-indigo-usb-cam
sudo apt-get -y install ros-indigo-rosserial ros-indigo-rosserial-arduino
sudo apt-get -y install ros-indigo-joy

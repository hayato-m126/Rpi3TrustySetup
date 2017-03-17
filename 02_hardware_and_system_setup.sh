# use new user to login through ssh client
# delete default user
sudo deluser ubuntu
sudo rm -rf /home/ubuntu

#hostname and hosts change
sudo sh -c 'echo "rpi-trusty" > /etc/hostname'
sudo sed -i -e s/"127.0.1.1       ubuntu"/"127.0.1.1       rpi-trusty"/ /etc/hosts

#overscan
sudo sed -i -e s/"#disable_overscan=1"/"disable_overscan=1"/ /boot/firmware/config.txt

#hotplug
sudo sed -i -e s/"#hdmi_force_hotplug=1"/"hdmi_force_hotplug=1"/ /boot/firmware/config.txt

# hardware info
sudo apt-get -y install hardinfo

# system monitor
sudo apt-get -y install gnome-system-monitor

# for hardware clock
sudo apt-get -y install i2c-tools

# NetBIOS名前解決
sudo apt-get -y install winbind
sudo sed -i -e s/" dns"/" dns wins"/ /etc/nsswitch.conf

# firmware
sudo apt-get -y install linux-firmware

# desktop environment
sudo apt-get -y install lubuntu-desktop
# takes over 1 hour
sudo apt-get -y install xserver-xorg-video-fbturbo

# xdcmp setting
sudo sh -c 'echo "[XDMCPServer]" > /etc/lightdm/lightdm.conf'
sudo sh -c 'echo "enabled=true" >> /etc/lightdm/lightdm.conf'

# then reboot
sudo reboot

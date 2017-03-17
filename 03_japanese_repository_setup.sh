#change to japanese site
sudo sh -c 'echo "deb http://jp.archive.ubuntu.com/ports/ trusty main restricted universe multiverse" > /etc/apt/sources.list'
sudo sh -c 'echo "#deb-src http://jp.archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse" >> /etc/apt/sources.list'
sudo sh -c 'echo "deb http://jp.archive.ubuntu.com/ports/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list'
sudo sh -c 'echo "#deb-src http://jp.archive.ubuntu.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list'
sudo sh -c 'echo "deb http://jp.archive.ubuntu.com/ports/ trusty-updates restricted main multiverse universe" >> /etc/apt/sources.list'
sudo sh -c 'echo "#deb-src http://jp.archive.ubuntu.com/ubuntu/ trusty-updates restricted main multiverse universe" >> /etc/apt/sources.list'
sudo sh -c 'echo "deb http://jp.archive.ubuntu.com/ports/ trusty-backports restricted main multiverse universe" >> /etc/apt/sources.list'
sudo sh -c 'echo "#deb-src http://jp.archive.ubuntu.com/ubuntu/ trusty-backports restricted main multiverse universe" >> /etc/apt/sources.list'

# init update
sudo apt-get -y update
sudo apt-get -y upgrade

# then reboot
sudo reboot

#RPi2で実行する
#http://products.rt-net.jp/micromouse/archives/2985
sudo apt-get -y install curl binutils

#install rpi-update
sudo apt-get -y install ntpdate
sudo ntpdate -u ntp.ubuntu.com
sudo curl -L --output /usr/bin/rpi-update https://raw.githubusercontent.com/Hexxeh/rpi-update/master/rpi-update && sudo chmod +x /usr/bin/rpi-update

sudo BOOT_PATH=/boot/firmware ROOT_PATH=/ rpi-update

sudo update-initramfs -c -k 4.4.34-v7+
sudo apt-mark hold raspberrypi-bootloader-nokernel
sudo rm /etc/udev/rules.d/70-persistent-net.rules

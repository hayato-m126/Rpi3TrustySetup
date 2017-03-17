# japanese language
sudo apt-get -y install fonts-takao language-pack-ja language-pack-gnome-ja ibus-mozc
# swap
sudo apt-get -y install dphys-swapfile

# language setting
sudo update-locale LANG=C LANGUAGE=C LC_ALL=C LC_MESSAGES=POSIX

# firewall for security
sudo apt-get -y install gufw

# delete guest session
sudo sh -c 'echo "allow-guest=false" >> /etc/lightdm/lightdm.conf.d/20-lubuntu.conf'

# japanese localize
sudo cat << 'EOT' | sudo tee /etc/X11/
Section "Device"
    Identifier "Raspberry Pi FBDEV"
    Driver "fbturbo"
    Option "fbdev" "/dev/fb0"
    Option "SwapbuffersWait" "true"
EndSection
EOT

echo "Asia/Tokyo" | sudo tee /etc/timezone
sudo dpkg-reconfigure -f noninteractive tzdata
sudo locale-gen ja_JP.UTF-8
sudo dpkg-reconfigure -f noninteractive locales
echo "LANG=ja_JP.UTF-8" | sudo tee /etc/default/locale

sudo sed -i -e s/"XKBLAYOUT=\"us\""/"XKBLAYOUT=\"jp\""/ /etc/default/keyboard

sudo dpkg-reconfigure -f noninteractive
sudo dpkg-reconfigure keyboard-configuration

# and then reboot
sudo reboot
# use gui language setting

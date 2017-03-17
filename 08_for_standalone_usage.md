# for standalone usage
RPiをネット未接続の状態で使うとき用の設定をします。  
ロボットの中に入れて使うときに必要な設定  

## IP固定
sudo nano /etc/network/interfaces  

\#iface eth0 inet dhcp コメントアウトする  
固定化したいIPを記述する
iface eth0 inet static  
address 192.168.70.25  
netmask 255.255.255.0  
gateway 192.168.70.0  

## RTC設定
Raspberry Piはネット未接続の状態だと、起動時に時計が1970-1-1になります。  
いつ取ったログかわからなくなるので、I2CにReal Time Clockを搭載して時間を取得するようにします。

sudo i2cdetect -y 1  
sudo modprobe rtc-ds1307  

sudo bash  
echo ds1307 0x68 > /sys/class/i2c-adapter/i2c-1/new_device  

sudo hwclock -r  
sudo hwclock -w  

sudo nano /etc/modules  

snd-bcm2835  
spi-bcm2708  
i2c-bcm2708  
i2c-dev  
rtc-1307  

sudo nano /etc/rc.local  

echo ds1307 0x68 > /sys/class/i2c-adapter/i2c-1/new_device  
sudo hwclock -s  

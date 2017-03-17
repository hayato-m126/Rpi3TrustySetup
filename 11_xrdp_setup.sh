# xrdpの画面表示に必要
sudo apt-get -y install lxde

sudo apt-get -y install xrdp
echo lxsession -s LXDE -e LXDE > ~/.xsession
sudo sed -i -e s/"crypt_level=low"/"crypt_level=high"/ /etc/xrdp/xrdp.ini
sudo sed -i -e s/"port=-1"/"port=ask"/ /etc/xrdp/xrdp.ini #セッション復元用

cd /etc/xrdp/
sudo wget http://w.vmeta.jp/temp/km-0411.ini     #設定ファイルのダウンロード
sudo ln -s km-0411.ini km-e0010411.ini
sudo ln -s km-0411.ini km-e0200411.ini
sudo ln -s km-0411.ini km-e0210411.ini
cd

sudo service xrdp restart

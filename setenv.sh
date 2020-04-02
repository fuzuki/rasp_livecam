#/bin/sh

cd `dirname $0`

#sudo apt-get install ffmpeg

sudo cp ./ffserver /etc/init.d/
sudo cp ./ffserver.conf /etc/
sudo cp ./ffmpeg /etc/init.d/

sudo useradd webcam
sudo adduser webcam video

sudo update-rc.d ffserver defaults 90
sudo update-rc.d ffmpeg defaults 92


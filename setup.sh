#!/bin/sh
cd /home/pi/autolaunch/
sudo chmod +x *.sh
sudo mkdir /home/pi/scripts/
cd
sudo cp /home/pi/autolaunch/vita.service /etc/systemd/user/
sudo cp /home/pi/autolaunch/91-vita.rule /etc/udev/rules.d/
sudo cp /home/pi/autolaunch/92-dvita.rule /etc/udev/rules.d/
sudo cp /home/pi/autolaunch/close.sh /home/pi/scripts/
sudo cp /home/pi/autolaunch/launch.sh /home/pi/scripts/
sudo systemctl enable /etc/systemd/user/vita.service && sudo systemctl start vita.service

#!/bin/sh
## Add SAIT IP addresses for NTP servers
#sudo cp -f /etc/systemd/timesyncd.conf /etc/systemd/timesyncd.conf.bak
#sudo bash -c "echo 'NTP= 10.197.2.9 10.197.3.9' >> /etc/systemd/timesyncd.conf"
##sudo timedatectl set-ntp true

## Set current time
#sudo date -s 2019/10/21
#sudo date -s 17:00

## Temporary fix for WPA Enterprise on Raspbian Buster, 
## connect Ethernet before running
#sudo apt-get remove wpasupplicant -y
#sudo mv -f /etc/apt/sources.list /etc/apt/sources.list.bak
#sudo bash -c "echo 'deb http://raspbian.raspberrypi.org/raspbian/ stretch main contrib non-free rpi' > /etc/apt/sources.list"
#sudo apt-get update
#sudo apt-get install wpasupplicant -y
#sudo apt-mark hold wpasupplicant
#sudo cp -f /etc/apt/sources.list.bak /etc/apt/sources.list
#sudo apt-get update
#sudo mv -f /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf.bak
#sudo cp -f ./wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf

## Updat wpa_supplicant file
sudo bash -c "echo 'country=CA' > /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo 'ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo 'update_config=1' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo 'network={' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '     ssid=\"sait-secure\"' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '     priority=1' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '     proto=RSN' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '     key_mgmt=WPA-EAP' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '     pairwise=CCMP' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '     auth_alg=OPEN' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '     eap=PEAP' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '     identity=\"serv16makerspace01\"' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '     password=\"MkSP@1601\"' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '     phase1=\"peaplabel=0\"' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '     phase2=\"auth=MSCHAPV2\"' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"
sudo bash -c "echo '}' >> /etc/wpa_supplicant/wpa_supplicant.conf.test"

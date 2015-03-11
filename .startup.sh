#!/bin/bash
sudo apt-add-repository ppa:versable/elementary-update
sudo add-apt-repository ppa:webupd8team/java

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

sudo apt-get install arduino -y
sudo apt-get install aptitude -y
sudo apt-get install curl -y
sudo apt-get install elementary-tweaks -y
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get install git -y
sudo apt-get install gnome-terminal -y
sudo apt-get install vim -y
sudo apt-get install vlc -y
sudo apt-get install redshift -y
sudo apt-get install python3 -y
sudo apt-get install htop -y
sudo apt-get install sqlite3 -y
sudo apt-get install rkhunter -y
sudo apt-get install libreoffice-common -y
sudo apt-get install nautilus -y
sudo apt-get install nmap -y
sudo apt-get install putty -y
sudo apt-get install firefox -y
sudo apt-get install oracle-java7-installer -y
sudo apt-get install python-numpy -y
sudo apt-get install python3-numpy -y
sudo apt-get install vuze -y
sudo apt-get install sbcl -y
sudo apt-get install mit-scheme -y
sudo apt-get install chromium-browser -y
sudo apt-get install python-logilab-common -y


cd 
git clone https://github.com/littledannyha/mybash.git
cp mybash/.gitconfig mybash/.vimrc .
cp mybash/.installAliases .
./.installAliases
rm .installAliases


#install google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
rm https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

#install python package manager
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
rm get-pip.py
sudo pip install virtualenv


sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
sudo apt-get update
sudo apt-get install elementary-tweaks

echo 'alter bashrc aliases'
echo "now go install:"
echo "\ttorrent managen"
echo "\teclipse"

sudo apt-get install xclip
sudo apt-get install python-tk -y

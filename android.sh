#!/bin/bash
cd ~/
apt update
apt upgrade -y
apt install wget proot -y
wget https://github.com/xiliuya/termux-linux/releases/download/untagged-d42e22a770f3c95aac45/install_linux.sh ~/install_linux.sh
chmod +x ~/install_linux.sh
~/install_linux.sh
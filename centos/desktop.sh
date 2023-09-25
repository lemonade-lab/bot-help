#!/bin/bash

source /bot-help/globals.sh

while true
do
OPTION=$(whiptail \
--title "《Desktop》" \
--menu "$version" \
15 50 5 \
"1" "安装" \
3>&1 1>&2 2>&3)
feedback=$?
if [ $feedback = 0 ]
then

#工具管理HelpManage
    if [ $OPTION = 1 ]
    then 
yum groupinstall "GNOME Desktop" -y
systemctl set-default graphical.target
read -p "安装完成,重启后生效" Enter
    fi

else
    exit
fi
done
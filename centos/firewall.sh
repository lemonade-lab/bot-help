#!/bin/bash

version=$(cat /etc/redhat-release)
readonly version

while true
do
OPTION=$(whiptail \
--title "《Firewall》" \
--menu "$version" \
15 50 3 \
"1" "状态" \
"2" "端口" \
"3" "重启" \
3>&1 1>&2 2>&3)

feedback=$?
if [ $feedback = 0 ]
then
    if [ $OPTION = 1 ]
    then firewall-cmd --state
    read -p "已执行,回车并继续Enter and continue..." c
    fi
    if [ $OPTION = 2 ]
    then systemctl start firewalld.service
    read -p "开启端口:" x
    firewall-cmd --zone=public --add-port=$x/tcp --permanent
    systemctl restart firewalld.service
    firewall-cmd --reload
    read -p "已执行,回车并继续Enter and continue..." c
    fi
    if [ $OPTION = 3 ]
    then systemctl restart firewalld.service
    read -p "已执行,回车并继续Enter and continue..." c
    fi
else
    exit
fi
done
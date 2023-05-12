#!/bin/bash

version=$(cat /etc/redhat-release)
readonly version

while true
do
OPTION=$(whiptail \
--title "《Firewall》" \
--menu "$version" \
15 50 5 \
"1" "安装" \
"2" "状态" \
"3" "列表" \
"4" "端口" \
"5" "重启" \
"6" "开启" \
"7" "关闭" \
3>&1 1>&2 2>&3)

feedback=$?
if [ $feedback = 0 ]
then
    if [ $OPTION = 1 ]
    then yum install firewall
    read -p "已执行,回车并继续Enter..." c
    fi
    if [ $OPTION = 2 ]
    then firewall-cmd --state
    read -p "已执行,回车并继续Enter..." c
    fi
    if [ $OPTION = 3 ]
    then firewall-cmd --zone=public --list-ports
    read -p "已执行,回车并继续Enter..." c
    fi
    if [ $OPTION = 4 ]
    then systemctl start firewalld.service
    read -p "开启端口:" port
    firewall-cmd --zone=public --add-port=$port/tcp --permanent
    systemctl restart firewalld
    read -p "已执行已重启,回车并继续Enter..." c
    fi
    if [ $OPTION = 5 ]
    then systemctl restart firewalld
    read -p "已执行,回车并继续Enter..." c
    fi
    if [ $OPTION = 6 ]
    then systemctl start firewalld
    read -p "已执行,回车并继续Enter..." c
    fi
    if [ $OPTION = 7 ]
    then systemctl stop firewalld
    read -p "已执行,回车并继续Enter..." c
    fi
else
    exit
fi
done

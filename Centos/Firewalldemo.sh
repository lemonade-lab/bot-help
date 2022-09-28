#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv


myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "#初始化失败"
[ -d ${myadress}"/YunzaiV3" ] || read -p "回车并继续..." c
[ -d ${myadress}"/YunzaiV3" ] || exit
cd "${myadress}"


while true
do
OPTION=$(whiptail \
--title "《Help-Firewall》" \
--menu "$yourv" \
15 50 3 \
"1" "状态" \
"2" "端口" \
"3" "重启" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
    if [ $OPTION = 1 ]
    then
firewall-cmd --state
echo "#已执行！"
read -p "回车并继续..." c
    fi
    if [ $OPTION = 2 ]
    then
systemctl start firewalld.service
read -p "开启端口：" x
firewall-cmd --zone=public --add-port=$x/tcp --permanent
systemctl restart firewalld.service
firewall-cmd --reload
echo "#已执行！"
read -p "回车并继续..." c
    fi
    if [ $OPTION = 3 ]
    then
systemctl restart firewalld.service
read -p "回车并继续..." c
    fi
else
    exit
fi
done

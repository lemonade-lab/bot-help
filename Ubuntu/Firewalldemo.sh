#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv

news=""

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV2" ] || mkdir YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || news="#初始化失败"
cd "${myadress}"


while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n$news" \
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
read -p "回车并继续..." y
    fi
    if [ $OPTION = 2 ]
    then
systemctl start firewalld.service
read -p "开启端口：" x
firewall-cmd --zone=public --add-port=$x/tcp --permanent
systemctl restart firewalld.service
firewall-cmd --reload
news="#已执行！"
    fi
    if [ $OPTION = 3 ]
    then
systemctl restart firewalld.service
read -p "回车并继续..." y
    fi
else
    exit
fi
done

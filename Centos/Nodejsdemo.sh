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
--title "Yunzai-Bot-Help" \
--menu "$yourv\n$news" \
15 50 3 \
"1" "改功能暂未开放" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
    if [ $OPTION = 1 ]
    then
news="#已执行！"
    fi
else
    exit
fi
done

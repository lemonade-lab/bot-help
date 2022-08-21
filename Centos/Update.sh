#!/bin/bash

yourv=$(cat /etc/redhat-release)
readonly yourv

news="默认强制更新..."

myadress="/home/lighthouse"
readonly myadress

bot="/Yunzai-Bot-Help"
readonly bot

Centosdemo="${bot}/Centos/Centosdemo.sh"

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
"1" "更新" \
"2" "卸载" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then

#更新
     if [ $OPTION = 1 ]
     then
[ -d ${bot} ] || cd /
[ -d ${bot} ] || "https://github.com/ningmengchongshui"${bot}".git"
[ -e ${Centosdemo} ] || rm -rf "${bot}"
[ -e ${Centosdemo} ] || news="#操作失败了，请重新执行！"
[ ! -e ${Centosdemo} ] || cd "${bot}"
[ ! -e ${Centosdemo} ] || git fetch --all
[ ! -e ${Centosdemo} ] || git reset --hard main
[ ! -e ${Centosdemo} ] || git pull
[ ! -e ${Centosdemo} ] || news="#执行完成，请重新授权！"
[ ! -e ${Centosdemo} ] || cd "${myadress}"
read -p "回车并继续..." y
     fi
     
#卸载
     if [ $OPTION = 2 ]
     then
Choise=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n$news" \
15 50 3 \
"1" "卸载" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
sudo su root
rm -rf "${bot}"
read -p "回车并继续..." y
fi
     fi
else
     exit
fi
done

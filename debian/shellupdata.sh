#!/bin/bash

version=$(cat /etc/issue)
readonly version

myadress="/home/lighthouse"
readonly myadress

bot="/bot-help"
readonly bot

Debiandemo="${bot}/debian/index.sh"
readonly Debianudemo

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/debian" ] || mkdir debian
[ -d ${myadress}"/debian" ] || exit

while true
do
OPTION=$(whiptail \
--title "《HelpManage》" \
--menu "$version" \
15 50 5 \
"1" "update工具更新" \
"2" "uninstall工具卸载" \
3>&1 1>&2 2>&3)

feedback=$?
if [ $feedback = 0 ]
then

#更新
     if [ $OPTION = 1 ]
     then
     [ -d ${bot} ] || cd /
     [ -d ${bot} ] || "https://gitee.com/ningmengchongshui${bot}.git"
     [ -e ${Centosdemo} ] || rm -rf "${bot}"
     [ -e ${Centosdemo} ] || echo "#操作失败了，请重新执行"
     [ ! -e ${Centosdemo} ] || cd "${bot}"
     [ ! -e ${Centosdemo} ] || git fetch --all
     [ ! -e ${Centosdemo} ] || git reset --hard main
     [ ! -e ${Centosdemo} ] || git pull
     [ ! -e ${Centosdemo} ] || echo "#执行完成,请重启工具"
     read -p "Enter回车并继续..." y
     fi
     
#卸载
     if [ $OPTION = 2 ]
     then
     sudo su root
     rm -rf "${bot}"
     read -p "执行完成Enter回车并继续..." y
     fi

else
     exit
fi
done

#!/bin/bash

version=$(cat /etc/issue)
readonly version

myadress="/home/lighthouse"
readonly myadress

bot="/yunzai-bot-help"
readonly bot

Ubuntudemo="${bot}/ubuntu/index.sh"
readonly Ubuntudemo

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/ubuntu" ] || mkdir ubuntu
[ -d ${myadress}"/ubuntu" ] || exit

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
     [ -e ${Ubuntudemo} ] || rm -rf "${bot}"
     [ -e ${Ubuntudemo} ] || echo "#操作失败了，请重新执行"
     [ ! -e ${Ubuntudemo} ] || cd "${bot}"
     [ ! -e ${Ubuntudemo} ] || git fetch --all
     [ ! -e ${Ubuntudemo} ] || git reset --hard main
     [ ! -e ${Ubuntudemo} ] || git pull
     [ ! -e ${Ubuntudemo} ] || echo "#执行完成,请重启工具"
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

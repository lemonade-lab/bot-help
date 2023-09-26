#!/bin/bash

source /bot-help/globals.sh

# 进入
cd "$DIRECTORY"

while true
do
OPTION=$(whiptail \
--title "《Manage》" \
--menu "$version" \
15 50 5 \
"1" "工具更新Update" \
"2" "工具卸载Uninstall" \
3>&1 1>&2 2>&3)
feedback=$?
if [ $feedback = 0 ]
then

#更新
     if [ $OPTION = 1 ]
     then
     [ -d ${AppName} ] || cd /
     [ -d ${AppName} ] || "https://gitee.com/ningmengchongshui${bot}.git"
     [ -e ${centosIndex} ] || rm -rf "${AppName}"
     [ -e ${centosIndex} ] || echo "#操作失败了，请重新执行"
     [ ! -e ${centosIndex} ] || cd "${AppName}"
     [ ! -e ${centosIndex} ] || git fetch --all
     [ ! -e ${centosIndex} ] || git reset --hard main
     [ ! -e ${centosIndex} ] || git pull
     [ ! -e ${centosIndex} ] || echo "#执行完成,请输入启动指令bot-help"
     # 直接结束了
     exit
     fi
     
#卸载
     if [ $OPTION = 2 ]
     then
     sudo su root
     rm -rf "${AppName}"
     read -p "执行完成..." y
     exit
     fi

else
     exit
fi
done

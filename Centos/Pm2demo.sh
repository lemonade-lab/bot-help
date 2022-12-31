#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "initialization failed初始化失败"
[ -d ${myadress}"/YunzaiV3" ] || read -p "Enter and continue回车并继续..." c
[ -d ${myadress}"/YunzaiV3" ] || exit
cd "${myadress}"


while true
do
OPTION=$(whiptail \
--title "《Help-SSH》" \
--menu "$yourv" \
15 50 5 \
"1" "install PM2安装PM2" \
"2" "view the list of processes查看进程列表" \
"3" "moniter all processes监视所有进程" \
"4" "run all processes运行所有进程" \
"5" "stop specific process停止指定进程" \
"6" "stop all processes停止所有进程" \
"7" "restart specific process重启指定进程" \
"8" "restart all processes重启所有进程" \
"9" "kill specific process杀死特定进程" \
"10" "kill all processes杀死所有进程" \
"11" "show diary显示进程日记" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
cd "${myadress}"
    if [ $OPTION = 1 ]
    then
npm i pm2 -g
read -p "Enter and continue回车并继续..." c
    fi
    if [ $OPTION = 2 ]
    then
pm2 list
read -p "Enter and continue回车并继续..." c
    fi
    if [ $OPTION = 3 ]
    then
pm2 monit    
read -p "Enter and continue回车并继续..." c
    fi
    if [ $OPTION = 4 ]
    then
pm2 start all    
read -p "Enter and continue回车并继续..." c
    fi
    if [ $OPTION = 5 ]
    then
read -p "进程ID：" x
pm2 list
pm2 stop $x    
read -p "Enter and continue回车并继续..." c
    fi
    if [ $OPTION = 6 ]
    then
pm2 stop all    
read -p "Enter and continue回车并继续..." c
    fi
    if [ $OPTION = 7 ]
    then
read -p "进程ID：" x
pm2 list
pm2 restart $x    
read -p "Enter and continue回车并继续..." c
    fi
    if [ $OPTION = 8 ]
    then
pm2 restart all    
read -p "Enter and continue回车并继续..." c
    fi
    if [ $OPTION = 9 ]
    then
read -p "进程ID：" x
pm2 restart $x    
read -p "Enter and continue回车并继续..." c
    fi
     if [ $OPTION = 10 ]
    then
pm2 delete all   
read -p "Enter and continue回车并继续..." c
    fi
     if [ $OPTION = 11 ]
    then
pm2 logs    
read -p "Enter and continue回车并继续..." c
    fi
else
    exit
fi
done

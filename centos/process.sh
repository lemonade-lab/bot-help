#!/bin/bash
version=$(cat /etc/redhat-release)
readonly version

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/centos" ] || mkdir centos
[ -d ${myadress}"/centos" ] || exit


while true
do
OPTION=$(whiptail \
--title "《Help-SSH》" \
--menu "$version" \
15 50 5 \
"1" "安装installPM2" \
"2" "查看进程view the list of processes" \
"3" "监视进程moniter all processes" \
"4" "运行进程run all processes" \
"5" "停止指定stop specific process" \
"6" "停止所有stop all processes" \
"7" "重启指定restart specific process" \
"8" "重启所有restart all processes" \
"9" "杀死特定kill specific process" \
"10" "杀死所有kill all processes" \
"11" "显示日记show diary" \
3>&1 1>&2 2>&3)
feedback=$?

if [ $feedback = 0 ]
then
   
    cd "${myadress}"
    if [ $OPTION = 1 ]
    then npm i pm2 -g
    read -p "Enter回车并继续..." Enter
    fi

    if [ $OPTION = 2 ]
    then pm2 list
    read -p "Enter回车并继续..." Enter
    fi

    if [ $OPTION = 3 ]
    then pm2 monit    
    read -p "Enter回车并继续..." Enter
    fi

    if [ $OPTION = 4 ]
    then
    pm2 start all    
    read -p "Enter回车并继续..." Enter
    fi

    if [ $OPTION = 5 ]
    then
    read -p "进程ID：" x
    pm2 list
    pm2 stop $x    
    read -p "Enter回车并继续..." Enter
    fi

    if [ $OPTION = 6 ]
    then pm2 stop all    
    read -p "Enter回车并继续..." Enter
    fi

    if [ $OPTION = 7 ]
    then
    read -p "进程ID：" x
    pm2 list
    pm2 restart $x    
    read -p "Enter回车并继续..." Enter
    fi

    if [ $OPTION = 8 ]
    then
    pm2 restart all    
    read -p "Enter回车并继续..." Enter
    fi

    if [ $OPTION = 9 ]
    then
    read -p "进程ID：" x
    pm2 restart $x    
    read -p "Enter回车并继续..." Enter
    fi

    if [ $OPTION = 10 ]
    then
    pm2 delete all   
    read -p "Enter回车并继续..." Enter
    fi

    if [ $OPTION = 11 ]
    then
    pm2 logs    
    read -p "Enter回车并继续..." Enter
    fi
    
else
    exit
fi
done

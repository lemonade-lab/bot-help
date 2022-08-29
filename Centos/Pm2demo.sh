#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv


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
--menu "$yourv" \
15 50 5 \
"1" "安装PM2" \
"2" "查看进程列表" \
"3" "监视所有进程" \
"4" "运行所有进程" \
"5" "停止指定进程" \
"6" "停止所有进程" \
"7" "重启指定进程" \
"8" "重启所有进程" \
"9" "杀死特定进程" \
"10" "杀死所有进程" \
"11" "显示进程日记" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then

    if [ $OPTION = 1 ]
    then
cd "${myadress}"
npm i pm2 -g
read -p "回车并继续..." c
    fi
    if [ $OPTION = 2 ]
    then
cd "${myadress}"
pm2 list
read -p "回车并继续..." c
    fi
    if [ $OPTION = 3 ]
    then
cd "${myadress}"
pm2 monit    
read -p "回车并继续..." c
    fi
    if [ $OPTION = 4 ]
    then
cd "${myadress}"
pm2 start all    
read -p "回车并继续..." c
    fi
    if [ $OPTION = 5 ]
    then
cd "${myadress}"
read -p "进程ID：" x
pm2 list
cd ${myadress}""
pm2 stop $x    
read -p "回车并继续..." c
    fi
    if [ $OPTION = 6 ]
    then
cd "${myadress}"
pm2 stop all    
read -p "回车并继续..." c
    fi
    if [ $OPTION = 7 ]
    then
cd "${myadress}"
read -p "进程ID：" x
cd ${myadress}""
pm2 list
pm2 restart $x    
read -p "回车并继续..." c
    fi
    if [ $OPTION = 8 ]
    then
cd "${myadress}"
pm2 restart all    
read -p "回车并继续..." c
    fi
    if [ $OPTION = 9 ]
    then
cd "${myadress}"
read -p "进程ID：" x
cd ${myadress}""
pm2 restart $x    
read -p "回车并继续..." c
    fi
     if [ $OPTION = 10 ]
    then
cd "${myadress}"
pm2 delete all   
read -p "回车并继续..." c
    fi
     if [ $OPTION = 11 ]
    then
cd "${myadress}"
pm2 logs    
read -p "回车并继续..." c
    fi
else
    exit
fi
done

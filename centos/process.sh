#!/bin/bash
version=$(cat /etc/redhat-release)
readonly version

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/Bot" ] || mkdir Bot
[ -d ${myadress}"/Bot" ] || exit


while true
do
OPTION=$(whiptail \
--title "《process》" \
--menu "$version" \
15 50 5 \
"1" "安装installLsof" \
"2" "查看lsof -i:" \
"3" "杀死kill -9" \
3>&1 1>&2 2>&3)
feedback=$?

if [ $feedback = 0 ]
then
   
    cd "${myadress}"
    if [ $OPTION = 1 ]
    then yum install lsof
    read -p "Enter回车并继续..." Enter
    fi
    
    if [ $OPTION = 2 ]
    then
    read -p "输入端口：" ID
    lsof -i:$ID    
    read -p "记下PID,Enter回车并继续..." Enter
    fi
    
    if [ $OPTION = 3 ]
    then
    read -p "选择PID：" PID
    kill -9 $PID    
    read -p "已执行,Enter回车并继续..." Enter
    fi
    
else
    exit
fi
done

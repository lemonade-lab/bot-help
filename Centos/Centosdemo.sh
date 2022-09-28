#!/bin/bash

yourv=$(cat /etc/redhat-release)
readonly yourv

Centos="/Yunzai-Bot-Help/Centos"
readonly Centos

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-HelpV1.2.0》" \
--menu "$yourv" \
15 50 5 \
"1" "HELP更新" \
"2" "机器配置" \
"3" "后台运行" \
"4" "进程管理" \
"5" "插件管理" \
"6" "扩展功能" \
"7" "环境管理" \
"8" "系统语言" \
"9" "SSH管理" \
"10" "防火墙" \
"11" "系统重启" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then

#HELP设置
    if [ $OPTION = 1 ]
    then
    cd "${Centos}"
    ./Update.sh
    fi

#机器管理
    if [ $OPTION = 2 ]
    cd "${Centos}"
    ./V3demo.sh
    fi

#运行管理
    if [ $OPTION = 3 ]
    then
    cd "${Centos}"
    ./Robotdemo.sh
    fi
  
#插件管理
    if [ $OPTION = 4 ]
    then
    cd "${Centos}"
    ./Pm2demo.sh
    fi
    
    if [ $OPTION = 5 ]
    then
    cd "${Centos}"
    ./Pluginsdeno.sh
    fi
    
    if [ $OPTION = 6 ]
    then
    cd "${Centos}"
    ./Extensiondemo.sh
    fi
    
    if [ $OPTION = 7 ]
    then
    cd "${Centos}"
    ./Environmentdemo.sh
    fi
    
    if [ $OPTION = 8 ]
    then
    cd "${Centos}"
    ./Systemlanguagedemo.sh
    fi
    
    if [ $OPTION = 9 ]
    then
    cd "${Centos}"
    ./SSHdemo.sh
    fi
    
    if [ $OPTION = 10 ]
    then
    cd "${Centos}"
    ./Firewalldemo.sh
    fi
    
    if [ $OPTION = 11 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$yourv\n#请确认是否确定重启..." \
15 50 3 \
"1" "重启" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
shutdown -r now
fi
    fi
    
else
    clear
    echo "退出成功！"
    exit
fi
done

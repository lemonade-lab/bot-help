#!/bin/bash

version=$(cat /etc/redhat-release)
readonly version

Centos="/yunzai-bot-help/centos"
readonly Centos

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$version" \
15 50 5 \
"1" "工具管理HelpManage" \
"2" "机器管理administrat" \
"3" "运行管理BackControl" \
"4" "进程管理ProcessManage" \
"5" "桌面安装DesktopInstall" \
"6" "环境管理EnvironManage" \
"7" "系统语言SystemLanguage" \
"8" "远程管理SSHManage" \
"9" "防火设置firewall" \
"10" "系统重启restart" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then

#HELP设置
    if [ $OPTION = 1 ]
    then
    sh "${Centos}/Update.sh"
    fi

#机器管理
    if [ $OPTION = 2 ]
    then
    sh "${Centos}/V3demo.sh"
    fi

#运行管理
    if [ $OPTION = 3 ]
    then
    sh "${Centos}/Robotdemo.sh"
    fi
  
#插件管理
    if [ $OPTION = 4 ]
    then
    cd "${Centos}"
    ./Pm2demo.sh
    fi
    
    if [ $OPTION = 5 ]
    then
    #cd "${Centos}"
    Choise=$(whiptail \
        --title "《Yunzai-Bot-Help》" \
        --menu "$version\nTo be updated功能正在施工中" \
        15 50 5 \
        "Tips提示" "To be updated功能正在施工中" \
        3>&1 1>&2 2>&3)
    fi
    
    if [ $OPTION = 6 ]
    then
    cd "${Centos}"
    ./Environmentdemo.sh
    fi
    
    if [ $OPTION = 7 ]
    then
    cd "${Centos}"
    ./Systemlanguagedemo.sh
    fi
    
    if [ $OPTION = 8 ]
    then
    cd "${Centos}"
    ./SSHdemo.sh
    fi
    
    if [ $OPTION = 9 ]
    then
    cd "${Centos}"
    ./Firewalldemo.sh
    fi
    
    if [ $OPTION = 10 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$version\n#Are you sure to restart是否确定重启?" \
15 50 3 \
"1" "restart重启" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
shutdown -r now
fi
    fi
    
else
    clear
    echo "Exit succeeded退出成功"
    exit
fi
done

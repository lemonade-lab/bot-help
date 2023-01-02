#!/bin/bash
#centos启动
version=$(cat /etc/redhat-release)
readonly version

centos="/yunzai-bot-help/centos"
readonly centos

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

feedback=$?

if [ $feedback = 0 ]
then

#工具管理HelpManage
    if [ $OPTION = 1 ]
    then sh "${centos}/shellupdata.sh"
    fi

#机器管理administrat
    if [ $OPTION = 2 ]
    then sh "${centos}/instart.sh"
    fi

#运行管理BackControl
    if [ $OPTION = 3 ]
    then sh "${centos}/peration.sh"
    fi
  
#进程管理ProcessManage
    if [ $OPTION = 4 ]
    then sh "${centos}/process.sh"
    fi

#桌面安装DesktopInstall
    if [ $OPTION = 5 ]
    then
    Choise=$(whiptail \
        --title "《Yunzai-Bot-Help》" \
        --menu "$version\n功能正在施工中To be updated" \
        15 50 5 \
        "Tips提示" "功能正在施工中To be updated" \
        3>&1 1>&2 2>&3)
    fi

#环境管理EnvironManage
    if [ $OPTION = 6 ]
    then sh "${centos}/Environ.sh"
    fi

#系统语言SystemLanguage
    if [ $OPTION = 7 ]
    then sh "${centos}/systemlanguage.sh"
    fi

#远程管理SSHManage
    if [ $OPTION = 8 ]
    then sh "${centos}/longrange.sh"
    fi

#防火设置firewall
    if [ $OPTION = 9 ]
    then sh "${centos}/firewall.sh"
    fi

#系统重启restart
    if [ $OPTION = 10 ]
    then shutdown -r now
    fi
else
    clear
    echo "退出成功Exit succeeded"
    exit
fi
done
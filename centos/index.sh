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
"1" "工具管理helpManage" \
"2" "机器管理administrat" \
"3" "运行管理backControl" \
"4" "进程管理processManage" \
"5" "负载管理loadManage" \
"6" "桌面安装desktopInstall" \
"7" "环境管理environManage" \
"8" "系统语言systemLanguage" \
"9" "远程管理sshManage" \
"10" "防火设置firewall" \
"11" "系统重启restart" \
3>&1 1>&2 2>&3)
feedback=$?

if [ $feedback = 0 ]
then

#工具管理HelpManage
    if [ $OPTION = 1 ]
    then bash "${centos}/shellupdata.sh"
    fi

#机器管理administrat
    if [ $OPTION = 2 ]
    then bash "${centos}/instart.sh"
    fi

#运行管理BackControl
    if [ $OPTION = 3 ]
    then bash "${centos}/peration.sh"
    fi
    
#进程管理processManage
    if [ $OPTION = 4 ]
    then bash "${centos}/process.sh"
    fi
  
#负载管理loadManage
    if [ $OPTION = 5 ]
    then bash "${centos}/load.sh"
    fi

#桌面安装DesktopInstall
    if [ $OPTION = 6 ]
    then bash "${centos}/desktop.sh"
    fi

#环境管理EnvironManage
    if [ $OPTION = 7 ]
    then bash "${centos}/environ.sh"
    fi

#系统语言SystemLanguage
    if [ $OPTION = 8 ]
    then bash "${centos}/systemlanguage.sh"
    fi

#远程管理SSHManage
    if [ $OPTION = 9 ]
    then bash "${centos}/longrange.sh"
    fi

#防火设置firewall
    if [ $OPTION = 10 ]
    then bash "${centos}/firewall.sh"
    fi

#系统重启restart
    if [ $OPTION = 11 ]
    then shutdown -r now
    fi
else
    exit
fi
done

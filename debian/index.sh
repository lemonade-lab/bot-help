#!/bin/bash
#debian启动
version=$(cat /etc/issue)
readonly version

debian="/yunzai-bot-help/debian"
readonly debian

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
    then bash "${debian}/shellupdata.sh"
    fi

#机器管理administrat
    if [ $OPTION = 2 ]
    then bash "${debian}/instart.sh"
    fi

#运行管理BackControl
    if [ $OPTION = 3 ]
    then bash "${debian}/peration.sh"
    fi
  
#进程管理ProcessManage
    if [ $OPTION = 4 ]
    then bash "${debian}/process.sh"
    fi

#桌面安装DesktopInstall
    if [ $OPTION = 5 ]
    then bash "${debian}/desktop.sh"
    fi

#环境管理EnvironManage
    if [ $OPTION = 6 ]
    then bash "${debian}/environ.sh"
    fi

#系统语言SystemLanguage
    if [ $OPTION = 7 ]
    then bash "${debian}/systemlanguage.sh"
    fi

#远程管理SSHManage
    if [ $OPTION = 8 ]
    then bash "${debian}/longrange.sh"
    fi

#防火设置firewall
    if [ $OPTION = 9 ]
    then bash "${debian}/firewall.sh"
    fi

#系统重启restart
    if [ $OPTION = 10 ]
    then shutdown -r now
    fi
else
    exit
fi
done

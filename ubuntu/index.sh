#!/bin/bash
#ubuntu启动
version=$(cat /etc/issue)
readonly version

ubuntu="/yunzai-bot-help/ubuntu"
readonly ubuntu

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
    then sh "${ubuntu}/shellupdata.sh"
    fi

#机器管理administrat
    if [ $OPTION = 2 ]
    then sh "${ubuntu}/instart.sh"
    fi

#运行管理BackControl
    if [ $OPTION = 3 ]
    then sh "${ubuntu}/peration.sh"
    fi
  
#进程管理ProcessManage
    if [ $OPTION = 4 ]
    then sh "${ubuntu}/process.sh"
    fi

#桌面安装DesktopInstall
    if [ $OPTION = 5 ]
    then sh "${ubuntu}/desktop.sh"
    fi

#环境管理EnvironManage
    if [ $OPTION = 6 ]
    then sh "${ubuntu}/environ.sh"
    fi

#系统语言SystemLanguage
    if [ $OPTION = 7 ]
    then sh "${ubuntu}/systemlanguage.sh"
    fi

#远程管理SSHManage
    if [ $OPTION = 8 ]
    then sh "${ubuntu}/longrange.sh"
    fi

#防火设置firewall
    if [ $OPTION = 9 ]
    then sh "${ubuntu}/firewall.sh"
    fi

#系统重启restart
    if [ $OPTION = 10 ]
    then shutdown -r now
    fi
else
    exit
fi
done

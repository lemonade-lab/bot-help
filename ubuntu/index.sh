#!/bin/bash
#ubuntu启动
version=$(cat /etc/issue)
readonly version

ubuntu="/bot-help/ubuntu"
readonly ubuntu

while true
do
OPTION=$(whiptail \
--title "《bot-help》" \
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
    then bash "${ubuntu}/shellupdata.sh"
    fi

#机器管理administrat
    if [ $OPTION = 2 ]
    then
	    OPTION1=$(whiptail \
                --title "《Bot-Help》" \
                --menu "$version" \
                15 50 5 \
                "1" "Alemon-Bot" \
                "2" "Yunzai-Bot" \
                3>&1 1>&2 2>&3)
                feedback1=$?

        if [ $feedback1 = 0 ]
        then
                if [ $OPTION1 = 1 ]
                then bash "$ubuntu/instart-alemon.sh"
                fi
                if [ $OPTION1 = 2 ]
                then bash "$ubuntu/instart-yunzai.sh"
                fi
        fi
    fi

#运行管理BackControl
    if [ $OPTION = 3 ]
    then bash "${ubuntu}/peration.sh"
    fi
  
#进程管理ProcessManage
    if [ $OPTION = 4 ]
    then bash "${ubuntu}/process.sh"
    fi

#桌面安装DesktopInstall
    if [ $OPTION = 5 ]
    then bash "${ubuntu}/desktop.sh"
    fi

#环境管理EnvironManage
    if [ $OPTION = 6 ]
    then bash "${ubuntu}/environ.sh"
    fi

#系统语言SystemLanguage
    if [ $OPTION = 7 ]
    then bash "${ubuntu}/systemlanguage.sh"
    fi

#远程管理SSHManage
    if [ $OPTION = 8 ]
    then bash "${ubuntu}/longrange.sh"
    fi

#防火设置firewall
    if [ $OPTION = 9 ]
    then bash "${ubuntu}/firewall.sh"
    fi

#系统重启restart
    if [ $OPTION = 10 ]
    then shutdown -r now
    fi
else
    exit
fi
done

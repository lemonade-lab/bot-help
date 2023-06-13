#!/bin/bash
#Bot启动
version=$(cat /etc/issue)
readonly version

Bot="/bot-help/Bot"
readonly Bot

while true
do
OPTION=$(whiptail \
--title "《bot-help》" \
--menu "$version" \
15 50 6 \
"1" "机器管理administrat" \
"2" "运行管理BackControl" \
"3" "进程管理ProcessManage" \
"4" "桌面安装DesktopInstall" \
"5" "环境管理EnvironManage" \
"6" "工具管理HelpManage" \
"7" "系统语言SystemLanguage" \
"8" "远程管理SSHManage" \
"9" "防火设置firewall" \
"10" "系统重启restart" \
3>&1 1>&2 2>&3)
feedback=$?

if [ $feedback = 0 ]
then

#工具管理HelpManage
    if [ $OPTION = 6 ]
    then bash "${Bot}/shellupdata.sh"
    fi

#机器管理administrat
    if [ $OPTION = 1 ]
    then
	    OPTION1=$(whiptail \
                --title "《Bot-Help》" \
                --menu "$version" \
                15 50 5 \
                "1" "Alemon-Bot" \
                "2" "Yunzai-Bot" \
		"3" "Miao-Yunzai" \
                3>&1 1>&2 2>&3)
                feedback1=$?

        if [ $feedback1 = 0 ]
        then
                if [ $OPTION1 = 1 ]
                then bash "$Bot/instart-alemon.sh"
                fi
                if [ $OPTION1 = 2 ]
                then bash "$Bot/instart-yunzai.sh"
                fi
		if [ $OPTION1 = 3 ]
		then bash "$Bot/instart-miaozai.sh"
		fi
        fi
    fi

#运行管理BackControl
    if [ $OPTION = 2 ]
    then bash "${Bot}/peration.sh"
    fi
  
#进程管理ProcessManage
    if [ $OPTION = 3 ]
    then bash "${Bot}/process.sh"
    fi

#桌面安装DesktopInstall
    if [ $OPTION = 4 ]
    then bash "${Bot}/desktop.sh"
    fi

#环境管理EnvironManage
    if [ $OPTION = 5 ]
    then bash "${Bot}/environ.sh"
    fi

#系统语言SystemLanguage
    if [ $OPTION = 7 ]
    then bash "${Bot}/systemlanguage.sh"
    fi

#远程管理SSHManage
    if [ $OPTION = 8 ]
    then bash "${Bot}/longrange.sh"
    fi

#防火设置firewall
    if [ $OPTION = 9 ]
    then bash "${Bot}/firewall.sh"
    fi

#系统重启restart
    if [ $OPTION = 10 ]
    then shutdown -r now
    fi
else
    exit
fi
done

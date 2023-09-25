#!/bin/bash

source /bot-help/globals.sh

while true
do
    OPTION=$(whiptail \
    --title "《bot-help》" \
    --menu "$version" \
    15 50 6 \
    "1" "环境部署EnvironmentStrat" \
    "2" "桌面安装DesktopInstall" \
    "3" "端口管理PortManagement" \
    "4" "工具管理ToolManagement" \
    "5" "系统语言SystemLanguage" \
    "6" "远程管理SSHManage" \
    "7" "防火设置Firewall" \
    "8" "系统重启Restart" \
    3>&1 1>&2 2>&3)
    feedback=$?

    if [ $feedback = 0 ]
    then
        # 环境部署administrat
        if [ $OPTION = 1 ]
        then
            bash "$centos/instart-environment.sh"
        fi

        # 桌面安装DesktopInstall
        if [ $OPTION = 2 ]
        then
            bash "${centos}/desktop.sh"
        fi

        if [ $OPTION = 3 ]
        then
            bash "${centos}/process.sh"
        fi

        if [ $OPTION = 4 ]
        then
            bash "${centos}/shellupdata.sh"
        fi

        # 系统语言SystemLanguage
        if [ $OPTION = 5 ]
        then
            bash "${centos}/systemlanguage.sh"
        fi

        # 远程管理SSHManage
        if [ $OPTION = 6 ]
        then
            bash "${centos}/longrange.sh"
        fi

        # 防火设置firewall
        if [ $OPTION = 7 ]
        then
            bash "${centos}/firewall.sh"
        fi

        # 系统重启restart
        if [ $OPTION = 8 ]
        then
            shutdown -r now
        fi
    else
        exit
    fi
done
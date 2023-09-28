#!/bin/bash

source /bot-help/globals.sh

wget --version
if [ $? != 0 ]
then yum  install wget -y
fi

git version
if [ $? != 0 ]
then
yum  install git -y
fi

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
    "6" "防火设置Firewall" \
    "7" "系统重启Restart" \
    3>&1 1>&2 2>&3)
    feedback=$?
    if [ $feedback = 0 ]
    then
        # 环境部署administrat
        if [ $OPTION = 1 ]
        then
            bash "$centos/environment.sh"
        fi

        # 桌面安装DesktopInstall
        if [ $OPTION = 2 ]
        then
            bash "$centos/desktop.sh"
        fi

        # process
        if [ $OPTION = 3 ]
        then
            bash "$centos/process.sh"
        fi

        # shellupdata
        if [ $OPTION = 4 ]
        then
            bash "$centos/shellupdata.sh"
            child_exit_code=$?
            if [ $child_exit_code -eq 0 ]
            then
                exit  # 结束整个脚本的执行
            fi
        fi

        # 系统语言SystemLanguage
        if [ $OPTION = 5 ]
        then
            bash "$centos/systemlanguage.sh"
        fi

        # 防火设置firewall
        if [ $OPTION = 6 ]
        then
            bash "$centos/firewall.sh"
        fi

        # 系统重启restart
        if [ $OPTION = 7 ]
        then
            shutdown -r now
        fi
    else
        exit
    fi
done
#!/bin/bash

version=$(cat /etc/issue)
readonly version

Ubuntu="/yunzai-bot-help/ubuntu"
readonly Ubuntu

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
	"5" "插件管理pliginManage" \
	"6" "扩展功能ExtendedManage" \
	"7" "环境管理EnvironManage" \
	"8" "系统语言SystemLanguage" \
	"9" "远程管理SSHManage" \
	"10" "防火设置firewall" \
	"11" "系统重启restart" \
	3>&1 1>&2 2>&3)
	feedback=$?
	if [ $feedback = 0 ]
	then
	    
		#HELP设置
	    if [ $OPTION = 1 ]
		then sh "${Ubuntu}/shellupdata.sh"
		fi
		
		#机器管理
		if [ $OPTION = 2 ]
		then sh "${Ubuntu}/robotinstall.sh"
		fi
		
		#运行管理
		if [ $OPTION = 3 ]
		then sh "${Ubuntu}/Robotdemo.sh"
		fi
		
		#插件管理
		if [ $OPTION = 4 ]
		then sh "${Ubuntu}/Pm2demo.sh"
		fi
		
		if [ $OPTION = 5 ]
		then sh "${Ubuntu}/Pluginsdeno.sh"
		fi
		
		if [ $OPTION = 6 ]
		then sh "${Ubuntu}/Extensiondemo.sh"
		fi
		
		if [ $OPTION = 7 ]
		then sh "${Ubuntu}/Environmentdemo.sh"
		fi
		
		if [ $OPTION = 8 ]
		then sh "${Ubuntu}/Systemlanguagedemo.sh"
		fi
		
		if [ $OPTION = 9 ]
		then sh "${Ubuntu}/SSHdemo.sh"
		fi
		
		if [ $OPTION = 10 ]
		then sh "${Ubuntu}/Firewalldemo.sh"
		fi
		
		if [ $OPTION = 11 ]
		then shutdown -r now
		fi
else
	exit
	fi
done

#!/bin/bash

source /bot-help/globals.sh

wget --version 1>/dev/null
if [ $? != 0 ]; then apt-get install wget -y 
fi

git version 1>/dev/null 
if [ $? != 0 ]; then apt-get install git -y 
fi

while true
do
	OPTION=$(whiptail \
		--title "《bot-help》" \
		--menu "${version}" \
		15 50 6 \
		"1" "环境部署Env Deploy" \
		"2" "桌面安装DesktopIns" \
		"3" "端口管理PortManage" \
		"4" "工具管理ToolManage" \
		"5" "系统语言SyLanguage" \
		"6" "防火墙设置UFW SETS" \
		"7" "系统重启SysRestart" \
		3>&1 1>&2 2>&3)
	feedback=$?
	if [ $feedback = 0 ]; then
		if [ $OPTION = 1 ]; then bash "$deub/env.sh"
		fi
		if [ $OPTION = 2 ]; then bash "$deub/desktop.sh"
		fi
		if [ $OPTION = 3 ]; then bash "$deub/process.sh"
		fi
		if [ $OPTION = 4 ]; then 
			bash "$deub/shellupdate.sh"
			child_exit_code=$?
			if [ $child_exit_code -eq 0 ]; then
				exit 
			fi
		fi
		if [ $OPTION = 5 ]; then bash "$deub/language.sh"
		fi
		if [ $OPTION = 6 ]; then bash "$deub/ufwset.sh"
		fi
		if [ $OPTION = 7 ]; then
			echo "云服务器推荐使用云服务器网页端的重启按钮"
			echo ""
			read -p "确定要重启?[Y|N]" Enter
			if [[ "$enter" == "yes" || "$enter" == "y" || "$enter" == "Yes" || "$enter" == "Y" ]]; then shutdown -r now
			else exit
			fi

	       	fi
	else
		exit
	fi
done

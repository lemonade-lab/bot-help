#!/bin/bash

source /bot-help/globals.sh

cd "$DIRECTORY"

while true
do
	OPTION=$(whiptail \
		--title "《Manage》" \
		--menu "$version" \
		15 50 5 \
		"1" "工具更新Update" \
		"2" "工具卸载Uninstall" \
		3>&1 1>&2 2>&3)
	feedback=$?
	if [ $feedback = 0 ]; then
		if [ $OPTION = 1 ]; then
			if [ ! -d "$AppName" ]; then
				cd /
				git clone "https://github.com/ningmengchongshui/bot-help.git"
			fi

			if [ ! -e "$centosIndex" ]; then
				rm -rf "$AppName"
				echo "#操作失败了，请重新执行"
			else
				cd "$AppName"
				git fetch --all
				git reset --hard main
				git pull
				echo "《BOT-HELP》"
				echo "#执行完成...."
				echo "#请输入启动指令唤起...."
			fi
			exit 0

		fi
		if [ $OPTION = 1 ]; then
			sudo su root
			rm -rf "$AppName"
			echo "《BOT-HELP》"
			echo "#已卸载应用..."
			exit 0
                fi
	else
		exit 1
	fi
done

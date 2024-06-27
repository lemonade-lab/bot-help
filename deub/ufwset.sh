#!/bin/bash

source /bot-help/globals.sh

while true
do
	OPTION=$(whiptail \
		--title "《UFW SET》" \
		--menu "$version" \
		15 50 5 \
		"1" "安装" \
		"2" "状态" \
		"3" "列表" \
		"4" "端口" \
		"5" "重启" \
		"6" "开启" \
		"7" "关闭" \
		"8" "重置" \
		3>&1 1>&2 2>&3)
	feedback=$?
	if [ $feedback = 0 ]; then
		if [ $OPTION = 1 ]; then
			apt install ufw -y
			read -p "已执行,回车并继续Enter..." c
		fi
		if [ $OPTION = 2 ]; then
			ufw status
			read -p "已执行,回车并继续Enter..." c
                fi
		if [ $OPTION = 3 ]; then
			ufw status numbered
			read -p "已执行,回车并继续Enter..." c
                fi
		if [ $OPTION = 4 ]; then
			ufw enable
			read -p "开启端口:" port
			ufw allow $port
			read -p "已执行,回车并继续Enter..." c
                fi
		if [ $OPTION = 5 ]; then
			ufw reload
			read -p "已执行,回车并继续Enter..." c
		fi
		if [ $OPTION = 6 ]; then
			ufw enable
			read -p "已执行,回车并继续Enter..." c
                fi
		if [ $OPTION = 7 ]; then
			ufw disable
			read -p "已执行,回车并继续Enter..." c
                fi
		if [ $OPTION = 8 ]; then
			ufw reset
			read -p "已执行,回车并继续Enter..." c
		fi
	else
		exit
	fi
done

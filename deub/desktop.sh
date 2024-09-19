#!/bin/bash

source /visible/globals.sh

while true
do
	OPTION=$(whiptail \
		--title "《Desktop》" \
		--menu "$version" \
		15 50 5 \
		"1" "安装" \
		3>&1 1>&2 2>&3)
	feedback=$?
	if [ $feedback = 0 ]; then
		if [ $OPTION = 1 ]; then
			if grep -q -E -i "debian" /etc/issue ; then
				apt install task-gnome-desktop -y
			fi
			if grep -q -E -i "ubuntu" /etc/issue ; then
				apt install ubuntu-gnome-desktop -y
			fi
			read -p "安装完成,重启后生效" Enter
		fi
	else
		exit
	fi
done

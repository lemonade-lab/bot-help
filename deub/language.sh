#!/bin/bash

source /visible/globals.sh

cd "$DIRECTORY"

while true
do
	OPTION=$(whiptail \
		--title "《Language》" \
		--menu "$version" \
		15 50 5 \
		"1" "下载语言Downloadlanguage" \
		"2" "语言列表Languagelist" \
		"3" "编辑语言Editlanguage" \
		"4" "当前语言Currentlanguage" \
		3>&1 1>&2 2>&3)
	feedback=$?
	if [ $feedback = 0 ]; then
		if [ $OPTION = 1 ]; then
			cd "$DIRECTORY"
			apt install ttf-wqy-microhei locales -y
			read -p "已执行Enter回车并继续..." x
		fi
		if [ $OPTION = 2 ]; then
			locale -a
			read -p "Enter回车并继续..." x
                fi
		if [ $OPTION = 3 ]; then
			dpkg-reconfigure locales
                fi
		if [ $OPTION = 4 ]; then
			echo "$LANG"
			read -p "Enter回车并继续..." x
                fi
	else
		exit
	fi
done

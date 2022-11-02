#!/bin/bash
yourv=$(cat /etc/issue)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV2" ] || mkdir YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
cd "${myadress}"


while true
do
	OPTION=$(whiptail \
		--title "《Yunzai-Bot》" \
		--menu "$yourv" \
		15 50 3 \
		"1" "查看版本" \
		"2" "Redis进程" \
		"3" "zip&sshpass" \
		3>&1 1>&2 2>&3)

	x=$?
	if [ $x = 0 ]
	then
		if [ $OPTION = 1 ]
		then
			read -p "回车并继续..." y
		fi
		if [ $OPTION = 2 ]
		then
			read -p "回车并继续..." y
		fi
		if [ $OPTION = 3 ]
		then
			read -p "回车并继续..." y
		fi
	else
		exit
	fi
done

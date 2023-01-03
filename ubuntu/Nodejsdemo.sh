#!/bin/bash
yourv=$(cat /etc/issue)
readonly yourv


myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/ubuntu" ] || mkdir ubuntu
[ -d ${myadress}"/ubuntu" ] || echo "#初始化失败"
[ -d ${myadress}"/ubuntu" ] || read -p "回车并继续..."
[ -d ${myadress}"/ubuntu" ] || exit

cd "${myadress}"


while true
do
	OPTION=$(whiptail \
		--title "《Yunzai-Bot》" \
		--menu "$yourv" \
		15 50 3 \
		"1" "改功能暂未开放" \
		3>&1 1>&2 2>&3)

	x=$?
	if [ $x = 0 ]
	then
		if [ $OPTION = 1 ]
		then
			news="#已执行！"
		fi
	else
		exit
	fi
done

#!/bin/bash
yourv=$(cat /etc/issue)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

bot="/Yunzai-Bot-Help"
readonly bot

Ubuntudemo="${bot}/Ubuntu/Ubuntudemo.sh"

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "#初始化失败"
[ -d ${myadress}"/YunzaiV3" ] || read -p "回车并继续..." c
[ -d ${myadress}"/YunzaiV3" ] || exit
cd "${myadress}"

while true
do
	OPTION=$(whiptail \
		--title "《Help-Update》" \
		--menu "$yourv\n$news" \
		15 50 3 \
		"1" "更新" \
		"2" "卸载" \
		3>&1 1>&2 2>&3)

	x=$?
	if [ $x = 0 ]
	then

#更新
if [ $OPTION = 1 ]
then
	#	[ -d ${bot} ] || cd /
	#	[ -d ${bot} ] || "https://github.com/ningmengchongshui"${bot}".git"
	# [ -e ${Ubuntudemo} ] || rm -rf "${bot}"
	#	[ -e ${Ubuntudemo} ] || echo "#操作失败了，请重新执行！"
	#	[ ! -e ${Ubuntudemo} ] || cd "${bot}"
	#	[ ! -e ${Ubuntudemo} ] || git fetch --all
	#	[ ! -e ${Ubuntudemo} ] || git reset --hard main
	#	[ ! -e ${Ubuntudemo} ] || git pull || chmod +x /Yunzai-Bot-Help/Ubuntu/*.sh
	#	[ ! -e ${Ubuntudemo} ] || echo "##执行完成，请重新授权！"
	#	[ ! -e ${Ubuntudemo} ] || cd "${myadress}"
	# 还需要加入gitee网络判断
	cd "${bot}"
	BRANCH=main
	LOCAL=$(git log $BRANCH -n 1 --pretty=format:"%H")
	REMOTE=$(git log remotes/origin/$BRANCH -n 1 --pretty=format:"%H")
	if [ $LOCAL = $REMOTE ]; then
		echo "无需更新"
	else
		git fetch --all
		git reset --hard main
		git pull
		echo "更新完成，退出重启生效"
	fi
fi

#卸载
if [ $OPTION = 2 ]
then
	Choise=$(whiptail \
		--title "《Help-Delete》" \
		--menu "$yourv" \
		15 50 3 \
		"1" "卸载" \
		3>&1 1>&2 2>&3)
			y=$?
			if [ $y = 0 ]
			then
				sudo su root
				rm -rf "${bot}"
			fi
fi
read -p "回车并继续..." y
else
	exit
	fi
done

#!/bin/bash
yourv=$(cat /etc/issue)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

bot="/Yunzai-Bot-Help"
readonly bot

Centosdemo="${bot}/Centos/Centosdemo.sh"

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV2" ] || mkdir YunzaiV2
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
	[ -d ${bot} ] || cd /
	[ -d ${bot} ] || "https://github.com/ningmengchongshui"${bot}".git"
	[ -e ${Centosdemo} ] || rm -rf "${bot}"
	[ -e ${Centosdemo} ] || echo "#操作失败了，请重新执行！"
	[ ! -e ${Centosdemo} ] || cd "${bot}"
	[ ! -e ${Centosdemo} ] || git fetch --all
	[ ! -e ${Centosdemo} ] || git reset --hard main
	[ ! -e ${Centosdemo} ] || git pull
	[ ! -e ${Centosdemo} ] || echo "##执行完成，请重新授权！"
	[ ! -e ${Centosdemo} ] || cd "${myadress}"
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

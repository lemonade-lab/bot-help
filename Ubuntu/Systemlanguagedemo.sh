#!/bin/bash
yourv=$(cat /etc/issue)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

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
		--title "《Systemlanguage》" \
		--menu "$yourv" \
		15 50 3 \
		"1" "下载语言包" \
		"2" "语言列表" \
		"3" "当前语言" \
		"4" "编辑教程" \
		"5" "编辑语言" \
		3>&1 1>&2 2>&3)

	x=$?
	if [ $x = 0 ]
	then
		if [ $OPTION = 1 ]
		then
			echo "功能等实现"
			read -p "回车并继续..." c
		fi
		if [ $OPTION = 2 ]
		then
			locale -a
			read -p "回车并继续..."
		fi
		if [ $OPTION = 3 ]
		then
			echo $LANG
			read -p "回车并继续..."
		fi
		if [ $OPTION = 4 ]
		then
			echo "《文件编辑教程》"
			echo "按i进入修改模式"
			echo "按ESE退出修改模式"
			echo "输入:wq!强制保存"
			echo "按CTRL+Z退出文件"
			read -p "回车并继续..."
		fi
		if [ $OPTION = 5 ]
		then
			echo "功能等实现"
			read -p "回车并继续..." c
		fi
	else
		exit
	fi
done

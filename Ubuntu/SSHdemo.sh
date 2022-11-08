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
[ -d ${myadress}"/YunzaiV3" ] || echo "#初始化失败"
[ -d ${myadress}"/YunzaiV3" ] || read -p "回车并继续..." c
[ -d ${myadress}"/YunzaiV3" ] || exit
cd "${myadress}"


while true
do
	OPTION=$(whiptail \
		--title "《Help-SSH》" \
		--menu "$yourv" \
		15 50 3 \
		"1" "SSH初始化" \
		"2" "编辑说明" \
		"3" "编辑SSH" \
		"4" "重启SSH" \
		"5" "SSH状态" \
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
			echo "《文件编辑教程》"
			echo "按i进入修改模式"
			echo "按ESE退出修改模式"
			echo "输入:wq!并回车强制保存"
			echo "按CTRL+Z退出文件"
			echo "——————————————————————————————"
			echo "请编辑SSH"
			echo "寻找并更改以下参数"
			echo "——————————————————————————————"
			echo "改#port 22为"
			echo "port 22"
			echo "——————————————————————————————"
			echo "改#PubkeyAuthentication yes为"
			echo "PubkeyAuthentication yes"
			echo "——————————————————————————————"
			read -p "回车并继续..."
		fi
		if [ $OPTION = 3 ]
		then
			vi /etc/ssh/sshd_config
		fi
		if [ $OPTION = 4 ]
		then
			systemctl restart ssh.service
			cd "${myadress}"
			read -p "回车并继续..."
		fi
		if [ $OPTION = 5 ]
		then
			systemctl status ssh.service
			cd "${myadress}"
			read -p "回车并继续..."
		fi
	else
		exit
	fi
done

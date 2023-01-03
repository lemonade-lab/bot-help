#!/bin/bash
yourv=$(cat /etc/issue)
readonly yourv



myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/ubuntu" ] || mkdir ubuntu
cd "${myadress}"

ubuntu="${myadress}/ubuntu/Yunzai-Bot"
readonly ubuntu

XiuxianV3="${myadress}/ubuntu/XiuXianV3"
readonly XiuxianV3

while true
do
	OPTION=$(whiptail \
		--title "《Yunzai-Bot》" \
		--menu "$yourv\n$news" \
		15 50 3 \
		"1" "运行状态" \
		"2" "启动云崽V3" \
		"3" "停止云崽V3" \
		3>&1 1>&2 2>&3)

	x=$?
	if [ $x = 0 ]
	then
		if [ $OPTION = 1 ]
		then
			cd "${myadress}"
			pm2 list
			read -p "回车并继续..." c
		fi
		if [ $OPTION = 2 ]
		then
			[ -d ${ubuntu}"/plugins" ] || echo "#未安装V3！"
			[ -e ${ubuntu}"/config/config/qq.yaml" ] || echo "#您未配置机器人V3QQ"
			[ ! -e ${ubuntu}"/config/config/qq.yaml" ] || cd ${ubuntu}""
			[ ! -e ${ubuntu}"/config/config/qq.yaml" ] || npm stop
			[ ! -e ${ubuntu}"/config/config/qq.yaml" ] || npm start
			[ ! -e ${ubuntu}"/config/config/qq.yaml" ] || echo "#V3后台运行"
			read -p "回车并继续..." c
		fi
		if [ $OPTION = 3 ]
		then
			[ -d ${XiuxianV3}"/plugins" ] || echo "#未安装V3！"
			[ ! -d ${XiuxianV3}"/plugins" ] || cd ${XiuxianV3}""
			[ ! -d ${XiuxianV3}"/plugins" ] || npm stop
			[ ! -d ${XiuxianV3}"/plugins" ] || echo "#V3关闭"
			read -p "回车并继续..." c
		fi
	else
		exit
	fi
done

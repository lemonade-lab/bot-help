#!/bin/bash
yourv=$(cat /etc/issue)
readonly yourv



myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
cd "${myadress}"

YunzaiV3="${myadress}/YunzaiV3/Yunzai-Bot"
readonly YunzaiV3

XiuxianV3="${myadress}/YunzaiV3/XiuXianV3"
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
			[ -d ${YunzaiV3}"/plugins" ] || echo "#未安装V3！"
			[ -e ${YunzaiV3}"/config/config/qq.yaml" ] || echo "#您未配置机器人V3QQ"
			[ ! -e ${YunzaiV3}"/config/config/qq.yaml" ] || cd ${YunzaiV3}""
			[ ! -e ${YunzaiV3}"/config/config/qq.yaml" ] || npm stop
			[ ! -e ${YunzaiV3}"/config/config/qq.yaml" ] || npm start
			[ ! -e ${YunzaiV3}"/config/config/qq.yaml" ] || echo "#V3后台运行"
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

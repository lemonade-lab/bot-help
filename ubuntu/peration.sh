#!/bin/bash

version=$(cat /etc/issue)
readonly version
myadress="/home/lighthouse"
readonly myadress

#miaozai
yunzai="${myadress}/ubuntu/Miao-Yunzai"
readonly yunzai
yunzaiplugin="${yunzai}/plugins"
readonly yunzaiplugin
yunzaiqq="${yunzai}/config/config/qq.yaml"
readonly yunzaiqq

# alemon-bot
alemon="${myadress}/ubuntu/alemon-bot"
readonly alemon
alemonplugin="${alemon}/plugins"
readonly alemonplugin
alemonid="${alemon}/config/config.yaml"
readonly alemonid

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/ubuntu" ] || mkdir ubuntu
[ -d ${myadress}"/ubuntu" ] || exit

yunzaiverification(){
	[ -d "${yunzaiplugin}" ] || echo "Not installed未安装"
	[ -d "${yunzaiplugin}" ] || read -p "Enter回车并继续..." Enter
	[ -d "${yunzaiplugin}" ] || return "1"
	return "0"
}

alemonverification(){
	[ -d "${alemonplugin}" ] || echo "Not installed未安装"
	[ -d "${alemonplugin}" ] || read -p "Enter回车并继续..." Enter
	[ -d "${alemonplugin}" ] || return "1"
	return "0"
}

while true
do
	OPTION=$(whiptail \
		--title "《Yunzai-Bot》" \
		--menu "$version" \
		15 50 5 \
		"1" "运行状态status" \
		"2" "启动云崽run" \
		"3" "停止云崽stop" \
		"4" "启动阿柠檬run" \
		"5" "停止阿柠檬stop" \
		3>&1 1>&2 2>&3)
	feedback=$?
	if [ $feedback = 0 ]
	then

		if [ $OPTION = 1 ]
		then
			cd "${myadress}"
			pm2 list
			read -p "Enter回车并继续..." c
		fi

		if [ $OPTION = 2 ]
		then yunzaiverification
			if [ $? = "0" ]
			then 
				[ -e "${yunzaiqq}" ] || echo "#您未配置机器人V3QQ"
				[ ! -e "${yunzaiqq}" ] || cd "${yunzai}"
				[ ! -e "${yunzaiqq}" ] || npm run stop
				[ ! -e "${yunzaiqq}" ] || npm run start
				[ ! -e "${yunzaiqq}" ] || echo "已后台运行，可以在<运行状态>查看"
				read -p "Enter回车并继续..." c
			fi
		fi

		if [ $OPTION = 3 ]
		then yunzaiverification
			if [ $? = "0" ]
			then 
				[ ! -d "${yunzaiplugin}" ] || cd "${yunzai}"
				[ ! -d "${yunzaiplugin}" ] || npm run stop
				[ ! -d "${yunzaiplugin}" ] || echo "关闭"
				read -p "Enter回车并继续..." c
			fi
		fi
		if [ $OPTION = 4 ]
		then alemonverification
			if [ $? = "0" ]
			then
				[ ! -e "${alemonid}" ] || echo "#您未配置机器人ID"
				[ ! -e "${alemonid}" ] || cd "${alemon}"
				[ ! -e "${alemonid}" ] || npm run stop
				[ ! -e "${alemonid}" ] || npm run start
				[ ! -e "${alemonid}" ] || echo "已后台运行，可以在<运行状态>查看"
				read -p "Enter回车并继续..." c
			fi
		fi
		if [ $OPTION = 5 ]
		then alemonverification
			if [ $? = "0" ]
			then
				[ ! -d "${alemonplugin}" ] || cd "${alemon}"
				[ ! -d "${alemonplugin}" ] || npm run stop
				[ ! -d "${yunzaiplugin}" ] || echo "关闭"
				read -p "Enter回车并继续..." c

			fi
		fi
	else
		exit
	fi
done

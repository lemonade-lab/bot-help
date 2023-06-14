#!/bin/bash

version=$(cat /etc/issue)
readonly version
myadress="/home/lighthouse"
readonly myadress

#yunzai
yunzai="${myadress}/Bot/Yunzai-Bot"
readonly yunzai
yunzaiplugin="${yunzai}/plugins"
readonly yunzaiplugin
yunzaiqq="${yunzai}/config/config/qq.yaml"

#miaozai
miaozai="${myadress}/Bot/Miao-Yunzai"
readonly miaozai
miaozaiplugin="${miaozai}/plugins"
readonly miaozaiplugin
miaozaiqq="${miaozai}/config/config/qq.yaml"
readonly miaozaiqq

# alemon-bot
alemon="${myadress}/Bot/alemon-bot"
readonly alemon
alemonplugin="${alemon}/plugins"
readonly alemonplugin
alemonid="${alemon}/config/config.yaml"
readonly alemonid

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/Bot" ] || mkdir Bot
[ -d ${myadress}"/Bot" ] || exit

yunzaiverification(){
	[ -d "${yunzaiplugin}" ] || echo "Not installed未安装"
	[ -d "${yunzaiplugin}" ] || read -p "Enter回车并继续..." Enter
	[ -d "${yunzaiplugin}" ] || return "1"
	return "0"
}

miaozaiverification(){
	[ -d "${miaozaiplugin}" ] || echo "Not installed未安装"
	[ -d "${miaozaiplugin}" ] || read -p "Enter回车并继续..." Enter
	[ -d "${miaozaiplugin}" ] || return "1"
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
		"1" "安装installPM2" \
		"2" "运行状态status" \
		"3" "启动Miaozai-Bot run" \
		"4" "停止Miaozai-Bot stop" \
		"5" "启动Alemon-Bot run" \
		"6" "停止Alemon-Bot stop" \
		"7" "启动Yunzai-Bot run" \
		"8" "停止Yunzai-Bot stop" \
		3>&1 1>&2 2>&3)
			feedback=$?
			if [ $feedback = 0 ]
			then
				if [ $OPTION = 1 ]
				then 
					cd "${myadress}"
					npm install pm2 -g
					read -p "Enter回车并继续..." c
				fi

				if [ $OPTION = 2 ]
				then
					cd "${myadress}"
					pm2 list
					read -p "Enter回车并继续..." c
				fi

				if [ $OPTION = 7 ]
				then yunzaiverification
					if [ $? = "0" ]
					then 
						[ -e "${yunzaiqq}" ] || echo "#您未配置机器人V3QQ"
						[ ! -e "${yunzaiqq}" ] || cd "${yunzai}"
						[ ! -e "${yunzaiqq}" ] || npm stop
						[ ! -e "${yunzaiqq}" ] || npm start
						[ ! -e "${yunzaiqq}" ] || echo "已后台运行，可以在<运行状态>查看"
						read -p "Enter回车并继续..." c
					fi
				fi

				if [ $OPTION = 8 ]
				then yunzaiverification
					if [ $? = "0" ]
					then 
						[ ! -d "${yunzaiplugin}" ] || cd "${yunzai}"
						[ ! -d "${yunzaiplugin}" ] || npm stop
						[ ! -d "${yunzaiplugin}" ] || echo "关闭"
						read -p "Enter回车并继续..." c
					fi
				fi
				if [ $OPTION = 5 ]
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
				if [ $OPTION = 6 ]
				then alemonverification
					if [ $? = "0" ]
					then
						[ ! -d "${alemonplugin}" ] || cd "${alemon}"
						[ ! -d "${alemonplugin}" ] || npm run stop
						[ ! -d "${yunzaiplugin}" ] || echo "关闭"
						read -p "Enter回车并继续..." c

					fi
				fi
				if [ $OPTION = 3 ]
				then miaozaiverification
					if [ $? = "0" ]
					then
						[ -e "${miaozaiqq}" ] || echo "#您未配置机器人V3QQ"
						[ ! -e "${miaozaiqq}" ] || cd "${miaozai}"
						[ ! -e "${miaozaiqq}" ] || npm stop
						[ ! -e "${miaozaiqq}" ] || npm start
						[ ! -e "${miaozaiqq}" ] || echo "已后台运行，可以在<运行状态>查看"
						read -p "Enter回车并继续..." c
					fi
				fi

				if [ $OPTION = 4 ]
				then miaozaiverification
					if [ $? = "0" ]
					then
						[ ! -d "${miaozaiplugin}" ] || cd "${miaozai}"
						[ ! -d "${miaozaiplugin}" ] || npm stop
						[ ! -d "${miaozaiplugin}" ] || echo "关闭"
						read -p "Enter回车并继续..." c
					fi
				fi
			else
				exit
			fi
		done

#!/bin/bash

yourv=$(cat /etc/issue)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

export ubuntu="${myadress}/ubuntu/Yunzai-Bot"

funv3(){
	if ! [ -d "${ubuntu}/plugins" ];then
		echo "未安装云崽V3"
		read -p "回车并退出..." x
	fi
	break > /dev/null 2>&1
}
funqq(){
	if ! [ -e "${ubuntu}/config/config/qq.yaml" ];then
		echo "请先启动云崽在配置qwq"
	       read -p "回车并退出..." x
	fi
	break > /dev/null 2>&1
}

while true
do
	OPTION=$(whiptail \
	--title "《Yunzai-Bot-V3》" \
	--menu "$yourv" \
	15 50 5 \
	"1" "快捷安装" \
	"2" "启动账号" \
	"4" "重新登录" \
	"5" "更新云崽" \
	"6" "卸载云崽" \
	3>&1 1>&2 2>&3)
	feedback=$?
		
	if [ $feedback = 0 ]
	then
		    if [ $OPTION = 1 ]
			then
			 
				./Install.sh
				
				cd "${ubuntu}"
				if ! [ -d "${ubuntu}/plugins/miao-plugin" ];then
					echo -e "\n正在下载喵喵插件..."
					git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
				fi

				# 云崽依赖的安装
				npm config set registry=https://registry.npmmirror.com/
				npm install pnpm -g
				pnpm install -P
				pnpm add image-size -w
				
				read -p "回车并继续..." Enter
		fi

		if [ $OPTION = 2 ]
		then
			funv3
			redis-server --daemonize yes
			cd "${ubuntu}"
			node app.js
		fi

		if [ $OPTION = 3 ]
		then
		    #重新登录
		fi

		if [ $OPTION = 4 ]
		then
			funv3
			if (whiptail --title "强制更新" --yesno "是否因不可抗因素强制更新" 15 50);then
				cd "${ubuntu}"
				git  checkout . && git  pull
				echo "更新成功！"
				read -p "回车并退出..." Enter
			fi
		fi

		if [ $OPTION = 5 ]
		then rm -rf "${ubuntu}"
		read -p "回车并退出..." Enter
		fi

	else
		exit
	fi
done

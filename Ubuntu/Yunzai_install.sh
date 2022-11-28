#!/bin/bash

yourv=$(cat /etc/issue)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

export YunzaiV3="${myadress}/YunzaiV3/Yunzai-Bot"

funv3(){
	if ! [ -d "${YunzaiV3}/plugins" ];then
		echo "未安装云崽V3"
		read -p "回车并退出..." x
	fi
	break > /dev/null 2>&1
}
funqq(){
	if ! [ -e "${YunzaiV3}/config/config/qq.yaml" ];then
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
		15 50 3 \
		"1" "安装" \
		"2" "启动" \
		"3" "修改配置" \
		"4" "修改主人" \
		"5" "删除QQ" \
		"6" "强制更新" \
		"7" "卸载" \
		3>&1 1>&2 2>&3)

	x=$?
	if [ $x = 0 ]
	then
		if [ $OPTION = 1 ];then
			if [ -d "${YunzaiV3}/plugins" ];then
				echo "已经安装了云崽了呢..."
				read -p "回车并退出..."
				break
			else
				# 调用云崽安装脚本
				./Install.sh
				# 喵喵插件的安装
				cd "${YunzaiV3}"
				if ! [ -d "${YunzaiV3}/plugins/miao-plugin" ];then
					echo -e "\n正在下载喵喵插件..."
					git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
				fi
				echo -e "喵喵插件已安装\n"
				# 云崽依赖的安装
				npm config set registry=https://registry.npmmirror.com/
				echo -e "\n正在安装依赖..."
				echo "enka-network-api依赖比较慢，请耐心等待qwq"
				npm install pnpm -g
				pnpm install -P
				pnpm add image-size -w
				read -p "回车并继续..." c
			fi
		fi
		if [ $OPTION = 2 ];then
			funv3
			echo -e "\n可以在运行云崽的时候Ctrl+C退出运行回到管理界面\n"
			echo -e "\033[31m！！注意：使用Ctrl+C之后不会云崽将不会运行！！\033[0m"
			echo -e "\033[32m>>可以运行管理后台启动哦qwq<<\033[0m"
			redis-server --daemonize yes
			cd "${YunzaiV3}"
			node app.js
		fi
		if [ $OPTION = 3 ];then
			funv3
			funqq
			vi ${YunzaiV3}"/config/config/group.yaml"
			read -p "回车并退出..." c

		fi
		if [ $OPTION = 4 ];then
			funv3
			funqq
			vi ${YunzaiV3}"/config/config/other.yaml"
			read -p "回车并退出..." c
		fi
		if [ $OPTION = 5 ];then
			funv3
			funqq
			rm -rf ${YunzaiV3}"/config/config/qq.yaml"
			echo "删除成功！"
			read -p "回车并退出..." c
		fi
		if [ $OPTION = 6 ];then
			funv3
			if (whiptail --title "强制更新" --yesno "是否因不可抗因素强制更新" 15 50);then
				cd "${YunzaiV3}"
				git  checkout . && git  pull
				echo "强制更新成功！"
				read -p "回车并退出..." c
			fi
		fi
		if [ $OPTION = 7 ];then
			if (whiptail --title "卸载" --yesno "确定要卸载云崽嘛qwq" 15 50);then
				rm -rf "${YunzaiV3}"
				echo "卸载成功！感谢使用！"
				read -p "回车并退出..." c
			fi
		fi
	else
		exit
	fi
done

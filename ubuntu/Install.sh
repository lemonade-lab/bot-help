#!/bin/bash

myadress="/home/lighthouse"
readonly myadress

# 判断/home/lighthouse目录是否存在
if ! [ -d $myadress ];then
	mkdir "${myadress}"
fi
echo -e "初始化完成\n"

# nodejs安装函数
Nodejs_install(){
	apt-get install -y curl
	curl -sL https://deb.nodesource.com/setup_16.x | bash -
	apt-get install -y nodejs npm
	nodev=$(node -v)
	npmv=$(npm -v)
	echo -e "nodejs版本:${nodev}\nnpm版本:${npmv}\n"
	read -p "安装完成，回车并继续..." v
}

# 兼容服务器版
rm -rf /var/lib/dpkg/lock-frontend
rm -rf /var/lib/dpkg/lock
rm -rf /var/cache/apt/archives/lock

# nodejs的安装
if ! [ -x "$(command -v node)" ];then
	read -p "检测到未安装nodejs，回车安装nodejs" v
	Nodejs_install
else
	# 判断nodejs版本
	node=$(node -v)
	node_v=${node:1:2}
	if [ "$node_v" -lt 16 ];then
		nodev=$(node -v)
		npmv=$(npm -v)
		echo -e "nodejs版本:${nodev}\nnpm版本:${npmv}"
		read -p "nodejs版本不适配,需要重装nodejs，回车更新版本！" v
		apt-get remove -y nodejs npm
		echo "卸载完成，正在安装新版"
		Nodejs_install
	else
		nodev=$(node -v)
		npmv=$(npm -v)
		echo -e "nodejs版本:${nodev}\nnpm版本:${npmv}"
		echo -e "nodejs版本适配，无需重装nodejs\n"
	fi
fi

# Chromium的安装
if ! [ -x "$(command -v chromium-browser)" ];then
	echo "正在安装Chromium"
	apt-get install -y chromium-browser
fi
echo -e "Chromium已经安装完成\n"

# Redis的安装
if ! [ -x "$(command -v redis-server)" ];then
	echo "正在安装Redis"
	apt-get install -y redis
fi
echo -e "Redis已经安装完成\n"

# Git的安装
if ! [ -x "$(command -v git)" ];then
        echo "正在安装Git"
        apt-get install -y git
fi
echo -e "Git已经安装完成\n"

# 字体的安装
if ! [ -e "/usr/share/fonts/truetype/wqy/wqy-microhei.ttc" ];then
	echo "正在安装字体"
	apt-get install -y --force-yes --no-install-recommends fonts-wqy-microhei
fi
echo -e "字体已安装完成\n"

# Yunzai-Bot的安装
##YunzaiV3来自前一个文件定义的全局变量
##myadress="/home/lighthouse"
##YunzaiV3="${myadress}/YunzaiV3/Yunzai-Bot"
if ! [ -d "${YunzaiV3}/plugins" ];then
	mkdir -p "${YunzaiV3}"
	echo -e "\n正在下载云崽..."
	git clone https://gitee.com/Le-niao/Yunzai-Bot.git "${YunzaiV3}"
fi
echo -e "云崽已安装\n"

if ! [ -d "${YunzaiV3}/plugins/Guoba-Plugin/apps" ];then
	cd "${YunzaiV3}"
	echo -e "\n正在下载锅巴插件..."
	git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin.git ./plugins/Guoba-Plugin/
fi
echo -e "锅巴插件已安装\n"

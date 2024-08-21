#!/bin/bash
echo "该脚本应该只支持termux"
# echo "如果在别的平台运行发现报错，可以反馈，但是我不一定修。"
# echo "该脚本目前只适用于第一次安装，对于后续bot更新维护等功能，持续咕咕。"

target_path=yunzai-next
echo ""
echo "请输入安装路径(直接回车使用默认路径 ./yunzai-next):"
read new_path
	new_path=${new_path:-azai-bot}
	
if [[ $new_path == $target_path ]]; then
    echo "使用默认路径"
else
    echo "bot将被安装在$new_path"
    target_path=$new_path
fi

export DEBIAN_FRONTEND=noninteractive
# export GYP_DEFINES="android_ndk_path=''"
mkdir ~/.gyp
echo -e "{
	'variables': {
		'android_ndk_path': ''
	}
}" > ~/.gyp/include.gypi

echo "开始安装依赖"
sourcelist="deb https://mirrors.ustc.edu.cn/termux/apt/termux-main stable main"
echo "正在替换国内源"
echo "${sourcelist}" > /data/user/0/com.termux/files/usr/etc/apt/sources.list
apt update
apt upgrade
apt install x11-repo nodejs redis binutils git -y
# apt install tur-repo -y
# apt install chromium -y

echo "正在安装chromium, 这会花一会功夫"
git clone --depth=1 https://gitee.com/kmiit/chrome-termux.git
cd chrome-termux && bash install.sh
cd ..
rm -rf chrome-termux
echo "chrome安装完成"

echo "Install bot"
git clone --depth=1 https://github.com/yunzai-org/yunzai-next.git     $target_path
cd $target_path
# git clone --depth=1  https://gitee.com/ningmengchongshui/miao-plugin ./plugins/miao-plugin
git clone --depth=1 https://github.com/yunzai-org/yunzai-bot.git
cd yunzai-bot

echo "Installing dependencies"
npm install yarn@1.19.1 -g
npm config set registry https://registry.npmmirror.com
yarn
cd .. && yarn

nohup redis-server &

yarn run build

# 安装结束
clear
sleep 0.5
echo -e "启动bot： \n\t cd $target_path && yarn run app"
echo ""
echo -e "脚本执行完毕.\n"

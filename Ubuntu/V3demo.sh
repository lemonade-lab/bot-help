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


Yunzai33="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai33

funv3(){
	[ -d ${Yunzai33}"/plugins" ] || echo "#未安装V3！"
	[ -d ${Yunzai33}"/plugins" ] || read -p "回车并继续..." x
	[ -d ${Yunzai33}"/plugins" ] || break
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
		"6" "更新" \
		"7" "卸载" \
		3>&1 1>&2 2>&3)

	x=$?
	if [ $x = 0 ]
	then

#安装
if [ $OPTION = 1 ]
then

##初始
cd ~
##安装cult
apt install curl -y

##node
node -v
if [ $? != 0 ]
then
	read -p "未安装nodejs，回车并继续" v
	#兼容服务器版
	rm -rf /var/lib/dpkg/lock-frontend       
	rm -rf /var/lib/dpkg/lock
	rm -rf /var/cache/apt/archives/lock
	apt-get update
	curl -sL https://deb.nodesource.com/setup_17.x | bash -
	apt-get install -y nodejs
else
	nodev=$(node -v)
	if [ $nodev != v17.9.0 ]
	then
		read -p "node版本不适配，回车并继续更新版本！" v
		curl -sL https://deb.nodesource.com/setup_17.x | bash -
		apt-get install -y nodejs
	else
		read -p "node版本适配，回车并继续..." v
	fi
fi

##redis
redis-cli --version
if [ $? != 0 ]
then
	apt-get install redis -y
	redis-server --daemonize yes
fi

##安装Chromium
apt install chromium-browser -y


##安装语言包
apt install -y --force-yes --no-install-recommends fonts-wqy-microhei

##git
git --version
if [ $? != 0 ]
then
	apt install git -y
fi

##yunzai
[ -d ${myadress}"/YunzaiV3" ] || echo "#初始化失败"
[ -d ${myadress}"/YunzaiV3" ] || read -p "回车并继续..." c
[ -d ${myadress}"/YunzaiV3" ] || break
cd ${myadress}"/YunzaiV3"
[ -d ${Yunzai33}"/plugins" ] || git clone https://gitee.com/Le-niao/Yunzai-Bot.git
[ -d ${Yunzai33}"/plugins" ] || rm -rf "${Yunzai33}"
[ -d ${Yunzai33}"/plugins" ] || echo "#安装失败" 
[ -d ${Yunzai33}"/plugins" ] || read -p "回车并继续..." c
[ -d ${Yunzai33}"/plugins" ] || break

##miao
cd "${Yunzai33}"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || rm -rf ${Yunzai33}"/plugins/miao-plugin"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || echo "#安装失败"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || read -p "回车并继续..." c
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || break

##依赖
cd "${Yunzai33}"
npm install
npm install image-size
echo "#执行完成"
read -p "回车并继续..." c
fi

#启动
if [ $OPTION = 2 ]
then
	funv3
	redis-server --daemonize yes
	cd "${Yunzai33}"
	node app.js
fi

#修改配置
if [ $OPTION = 3 ]
then
	funv3
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#您未配置"
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || read -p "回车并继续..." c
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
	[ -e ${Yunzai33}"/config/config/group.yaml" ] || echo "#您未配置"
	[ -e ${Yunzai33}"/config/config/group.yaml" ] || read -p "回车并继续..." c
	[ -e ${Yunzai33}"/config/config/group.yaml" ] || break
	vi ${Yunzai33}"/config/config/group.yaml"
fi

#修改主人
if [ $OPTION = 4 ]
then
	funv3
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#您未配置"
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || read -p "回车并继续..." c
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
	[ -e ${Yunzai33}"/config/config/other.yaml" ] || echo "#您未配置"
	[ -e ${Yunzai33}"/config/config/other.yaml" ] || read -p "回车并继续..." c
	[ -e ${Yunzai33}"/config/config/other.yaml" ] || break
	vi ${Yunzai33}"/config/config/other.yaml"
fi

#删除QQ
if [ $OPTION = 5 ]
then
	funv3
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#您未配置"
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || read -p "回车并继续..." c
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
	rm -rf ${Yunzai33}"/config/config/qq.yaml"
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#配置删除成功！"
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || read -p "回车并继续..." c
	[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
	echo "#配置删除失败！"
	read -p "回车并继续..." c
fi

#更新
if [ $OPTION = 6 ]
then
	funv3
	cd "${Yunzai33}"
	git pull
	[ -d ${Yunzai33}"/plugins/miao-plugin" ] || echo "#请先安装"
	[ -d ${Yunzai33}"/plugins/miao-plugin" ] || read -p "回车并继续..." c
	[ -d ${Yunzai33}"/plugins/miao-plugin" ] || break
	cd ${Yunzai33}"/plugins/miao-plugin"
	git pull
	echo "#更新完成"
	read -p "回车并继续..." c
fi

#卸载
if [ $OPTION = 7 ]
then
	funv3 
	Choise=$(whiptail \
		--title "《Yunzai-Bot-Delete》" \
		--menu "$yourv" \
		15 50 3 \
		"1" "卸载" \
		3>&1 1>&2 2>&3)
			y=$?
			if [ $y = 0 ]
			then
				rm -rf "${Yunzai33}"
				echo "#卸载成功！"
				read -p "回车并继续..." c    
			fi
fi
cd "${myadress}"
else
	exit
	fi
done

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


Yunzai22="${myadress}/YunzaiV2/Yunzai-Bot"
readonly Yunzai22

funv2(){
   [ -d ${Yunzai22}"/plugins" ] || echo "#未安装V2！"
   [ -d ${Yunzai22}"/plugins" ] || read -p "回车并继续..." c
   [ -d ${Yunzai22}"/plugins" ] || break
}

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-V2》" \
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
##下载cult
apt install curl -y

##node
node -v
if [ $? != 0 ]
then
#兼容服务器版
rm -rf /var/lib/dpkg/lock-frontend       
rm -rf /var/lib/dpkg/lock
rm -rf /var/cache/apt/archives/lock
apt-get update
read -p "未安装nodejs，回车并继续" v
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
[ -d ${myadress}"/YunzaiV2" ] || echo "#初始化失败"
[ -d ${myadress}"/YunzaiV2" ] || read -p "回车并继续..." c
[ -d ${myadress}"/YunzaiV2" ] || break
cd ${myadress}"/YunzaiV2"
[ -d ${Yunzai22}"/plugins" ] || git clone https://gitee.com/yoimiya-kokomi/Yunzai-Bot
[ -d ${Yunzai22}"/plugins" ] || rm -rf "${Yunzai22}"
[ -d ${Yunzai22}"/plugins" ] || echo "#安装失败" 
[ -d ${Yunzai22}"/plugins" ] || read -p "回车并继续..." c
[ -d ${Yunzai22}"/plugins" ] || break

##miao
cd "${Yunzai22}"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || rm -rf ${Yunzai22}"/plugins/miao-plugin"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || echo "#安装失败"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || read -p "回车并继续..." c
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || break

##依赖
cd "${Yunzai22}"
npm install
npm install image-size
news="#执行完成"
    fi
    
#启动
    if [ $OPTION = 2 ]
    then
[ -d ${Yunzai22}"/plugins" ] || echo "#请先安装"
[ -d ${Yunzai22}"/plugins" ] || read -p "回车并继续..." c
[ -d ${Yunzai22}"/plugins" ] || break
cd "${Yunzai22}"
node app.js
    fi
    
#修改配置
    if [ $OPTION = 3 ]
    then
    funv2
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || echo "#您未配置"
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || read -p "回车并继续..." c
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || break
[ -e ${Yunzai22}"/config/config/group.yaml" ] || echo "#您未配置"
[ -e ${Yunzai22}"/config/config/group.yaml" ] || read -p "回车并继续..." c
[ -e ${Yunzai22}"/config/config/group.yaml" ] || break
vi "${Yunzai22}/config/config/group.yaml"
echo "#修改成功！"
    fi

#修改主人
    if [ $OPTION = 4 ]
    then
    funv2
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || echo "#您未配置"
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || read -p "回车并继续..." c
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || break
[ -e ${Yunzai22}"/config/config/other.yaml" ] || echo "#您未配置"
[ -e ${Yunzai22}"/config/config/other.yaml" ] || read -p "回车并继续..." c
[ -e ${Yunzai22}"/config/config/other.yaml" ] || break
vi "${Yunzai22}/config/config/other.yaml"
echo "#修改成功！"
    fi
    
#删除QQ
    if [ $OPTION = 5 ]
    then
    funv2
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || echo "#您未配置"
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || read -p "回车并继续..." c
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || break
rm -rf ${Yunzai22}"/config/config/qq.yaml"
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || echo "#配置删除成功！"
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || read -p "回车并继续..." c
[ -e ${Yunzai22}"/config/config/qq.yaml" ] || break
echo "#配置删除失败！"
    fi
    
#更新
    if [ $OPTION = 6 ]
    then
    funv2
    cd "${Yunzai22}"
git pull
[ -d ${Yunzai22}"/plugins/miao-plugin" ] || echo "#请先安装"
[ -d ${Yunzai22}"/plugins/miao-plugin" ] || read -p "回车并继续..." c
[ -d ${Yunzai22}"/plugins/miao-plugin" ] || break
cd ${Yunzai22}"/plugins/miao-plugin"
git pull
echo "#更新完成"
    fi
    
#卸载
    if [ $OPTION = 7 ]
    then
    funv2
Choise=$(whiptail \
--title "《Yunzai-Bot-Delete》" \
--menu "$yourv" \
15 50 3 \
"1" "卸载" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
rm -rf "${Yunzai22}"
news="#卸载成功！"
fi
    fi
cd "${myadress}"
read -p "回车并继续..." c
else
    exit
fi
done

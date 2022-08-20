#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv

news=""

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV2" ] || mkdir YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || news="#初始化失败"
cd "${myadress}"

Yunzai22="${myadress}/YunzaiV2/Yunzai-Bot"
readonly Yunzai22

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n$news" \
15 50 3 \
"1" "安装" \
"2" "启动" \
"3" "修改配置" \
"4" "删除配置" \
"5" "更新" \
"6" "卸载" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then

#安装
    if [ $OPTION = 1 ]
    then

##初始
cd ${myadress}

##node
node -v
if [ $? != 0 ]
then
yum install -y dnf
dnf module install nodejs:16 -y
fi

##redis
redis-server -v
if [ $? != 0 ]
then
yum -y install git
yum -y install redis
redis-server --daemonize yes
systemctl enable redis.service
fi

##git
git version
if [ $? != 0 ]
then
yum -y install git
fi

##yunzai
[ -d ${myadress}"/YunzaiV2" ] || news="#初始化失败"
[ -d ${myadress}"/YunzaiV2" ] || break
cd ${myadress}"/YunzaiV2"
[ -d ${Yunzai22}"/plugins" ] || git clone https://gitee.com/yoimiya-kokomi/Yunzai-Bot
[ -d ${Yunzai22}"/plugins" ] || rm -rf ${Yunzai22} ""
[ -d ${Yunzai22}"/plugins" ] || news="#安装失败" 
[ -d ${Yunzai22}"/plugins" ] || break

##miao
cd "${Yunzai22}"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || rm -rf ${Yunzai22}"/plugins/miao-plugin"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || news="#安装失败"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || break

##依赖
cd "${Yunzai22}"
npm install

##安装Chromium
yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y 
yum install libdrm libgbm libxshmfence -y
yum install nss -y
yum update nss -y
yum groupinstall fonts -y
node ./node_modules/puppeteer/install.js
news="#安装成功"

##返回
cd "${myadress}"
    fi
    
#启动
    if [ $OPTION = 2 ]
    then
[ -d ${Yunzai22}"/plugins" ] || news="#请先安装"
[ -d ${Yunzai22}"/plugins" ] || break
cd "${Yunzai22}"
node app.js
    fi

#修改
    if [ $OPTION = 3 ]
    then
[ -d ${Yunzai22}"/plugins" ] || news="#请先安装"
[ -d ${Yunzai22}"/plugins" ] || break
[ -e ${Yunzai22}"/config/config.js" ] || news="#您未配置"
[ -e ${Yunzai22}"/config/config.js" ] || break
vi "${Yunzai22}/config/config.js"
    fi

#启动
    if [ $OPTION = 4 ]
    then
[ -d ${Yunzai22}"/plugins" ] || news="#请先安装"
[ -d ${Yunzai22}"/plugins" ] || break
[ -e ${Yunzai22}"/config/config.js" ] || news="#您未配置"
[ -e ${Yunzai22}"/config/config.js" ] || break
rm -rf "${Yunzai22}/config/config.js"
[ -e ${Yunzai22}"/config/config.js" ] || news="#配置删除"
[ -e ${Yunzai22}"/config/config.js" ] || break
    fi
    
#更新
    if [ $OPTION = 5 ]
    then
[ -d ${Yunzai22}"/plugins/miao-plugin" ] || news="#请先安装"
[ -d ${Yunzai22}"/plugins/miao-plugin" ] || break
cd "${Yunzai22}"
git pull
cd ${Yunzai22}"/plugins/miao-plugin"
git pull
news="#更新完成"
cd ${myadress}""
    fi
    
#卸载
    if [ $OPTION = 6 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n##上下选择##左右确定取消" \
15 50 3 \
"1" "卸载" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
[ -d ${Yunzai22}"/plugins" ] || news="#请先安装"
[ -d ${Yunzai22}"/plugins" ] || break
rm -rf "${Yunzai22}"
[ -e ${Yunzai22} ] || news="#卸载成功！"
[ -e ${Yunzai22} ] || break
news="#卸载失败！"
fi
    fi
    
else
    exit
fi
done

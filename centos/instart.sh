#!/bin/bash

version=$(cat /etc/redhat-release)
readonly version

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/centos" ] || mkdir centos
[ -d ${myadress}"/centos" ] || echo "initialization failed初始化失败"
[ -d ${myadress}"/centos" ] || read -p "#Enter and continue回车并继续..." c
[ -d ${myadress}"/centos" ] || exit
cd "${myadress}"


yunzai="${myadress}/centos/Yunzai-Bot"
readonly yunzai

yunzaiverification(){
   [ -d ${yunzai}"/plugins" ] || echo "Not installed#未安装V3！"
   [ -d ${yunzai}"/plugins" ] || read -p "Enter and continue回车并继续..." x
   [ -d ${yunzai}"/plugins" ] || break
}


while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot》" \
--menu "$version" \
15 50 5 \
"1" "install快捷安装" \
"2" "startUp启动账号" \
"3" "toUpdate机器更新" \
"4" "unInstall机器卸载" \
"5" "reLogin重新登录" \
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
node -v
if [ $? != 0 ]
then
yum install -y nodejs
yum install -y npm
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
[ -d ${myadress}"/centos" ] || echo "#Enter and continue回车并继续..."
[ -d ${myadress}"/centos" ] || read -p "#Enter and continue回车并继续..." c
[ -d ${myadress}"/centos" ] || break
cd ${myadress}"/centos"
[ -d ${yunzai}"/plugins" ] || git clone https://gitee.com/Le-niao/Yunzai-Bot.git
[ -d ${yunzai}"/plugins" ] || rm -rf ${yunzai} ""
[ -d ${yunzai}"/plugins" ] || echo "Installation failed安装失败" 
[ -d ${yunzai}"/plugins" ] || read -p "Enter and continue回车并继续..." c
[ -d ${yunzai}"/plugins" ] || break

##miao
cd "${yunzai}"
[ -d ${yunzai}"/plugins/miao-plugin/resources" ] || git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
[ -d ${yunzai}"/plugins/miao-plugin/resources" ] || rm -rf ${yunzai}"/plugins/miao-plugin"
[ -d ${yunzai}"/plugins/miao-plugin/resources" ] || echo "Installation failed安装失败,已清除残留"
[ -d ${yunzai}"/plugins/miao-plugin/resources" ] || read -p "Enter and continue回车并继续..." c
[ -d ${yunzai}"/plugins/miao-plugin/resources" ] || break

##guoba
cd "${yunzai}"
[ -d ${yunzai}"/plugins/Guoba-Plugin/resources" ] || git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin.git ./plugins/Guoba-Plugin/
[ -d ${yunzai}"/plugins/Guoba-Plugin/resources" ] || rm -rf ${yunzai}"/plugins/Guoba-Plugin"
[ -d ${yunzai}"/plugins/Guoba-Plugin/resources" ] || echo "Installation failed安装失败,已清除残留"
[ -d ${yunzai}"/plugins/Guoba-Plugin/resources" ] || read -p "Enter and continue回车并继续..." c
[ -d ${yunzai}"/plugins/Guoba-Plugin/resources" ] || break

##依赖
cd "${yunzai}"
npm install
npm install image-size
npm install express multer body-parser jsonwebtoken

##安装Chromium
yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y 
yum install libdrm libgbm libxshmfence -y
yum install nss -y
yum update nss -y
yum groupinstall fonts -y
node ./node_modules/puppeteer/install.js
echo "#安装成功"

##返回
read -p "Enter and continue回车并继续..." y
    fi
    
#启动
    if [ $OPTION = 2 ]
    then
[ -d ${yunzai}"/plugins" ] || echo "#请先安装"
[ -d ${yunzai}"/plugins" ] || read -p "Enter and continue回车并继续..." y
[ -d ${yunzai}"/plugins" ] || break
cd "${yunzai}"
node app.js
read -p "Enter and continue回车并继续..." y
    fi   
    
#更新
    if [ $OPTION = 3 ]
    then
    yunzaiverification
cd "${yunzai}"
git pull
[ -d ${yunzai}"/plugins/miao-plugin" ] || echo "#请先安装"
[ -d ${yunzai}"/plugins/miao-plugin" ] || read -p "Enter and continue回车并继续..." y
[ -d ${yunzai}"/plugins/miao-plugin" ] || break
cd "${yunzai}/plugins/miao-plugin"
git pull
echo "#更新完成"
read -p "Enter and continue回车并继续..." y
    fi
    
#卸载
    if [ $OPTION = 4 ]
    then
    yunzaiverification
Choise=$(whiptail \
--title "《Yunzai-Bot-V3》" \
--menu "$version" \
15 50 3 \
"1" "卸载" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
rm -rf "${yunzai}"
echo "#卸载成功！"
read -p "Enter and continue回车并继续..." y
fi
    fi

#登录
    if [ $OPTION = 4 ]
    then
[ -d ${yunzai}"/plugins" ] || echo "#请先安装"
[ -d ${yunzai}"/plugins" ] || read -p "Enter and continue回车并继续..." y
[ -d ${yunzai}"/plugins" ] || break
cd "${yunzai}"
npm login run
    fi   

cd "${myadress}"
else
    exit
fi
done

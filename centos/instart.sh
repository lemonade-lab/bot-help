#!/bin/bash

version=$(cat /etc/redhat-release)
readonly version

myadress="/home/lighthouse"
readonly myadress

yunzai="${myadress}/centos/Yunzai-Bot"
readonly yunzai

yunzaiplugin="${yunzai}/plugins"
readonly yunzaiplugin
yunzaimiao="${yunzai}/plugins/miao-plugin/resources"    
readonly yunzaimiao
yunzaiGuoba="${yunzai}/plugins/Guoba-Plugin/resources"    
readonly yunzaiGuoba

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/centos" ] || mkdir centos
[ -d ${myadress}"/centos" ] || exit
cd "${myadress}"

yunzaiverification(){
   [ -d "${yunzaiplugin}" ] || echo "Not installed未安装"
   [ -d "${yunzaiplugin}" ] || read -p "Enter回车并继续..." Enter
   [ -d "${yunzaiplugin}" ] || return "1"
   return "0"
}

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot》" \
--menu "$version" \
15 50 5 \
"1" "install快捷安装" \
"2" "startUp启动账号" \
"3" "reLogin重新登录" \
"4" "toUpdate机器更新" \
"5" "unInstall机器卸载" \
3>&1 1>&2 2>&3)

feedback=$?
if [ $feedback = 0 ]
then

#安装
    if [ $OPTION = 1 ]
    then
    node -v
        if [ $? != 0 ]
        then
        #兼容centos7
        yum install -y dnf
        dnf module install nodejs:16 -y
        fi
    node -v
        if [ $? != 0 ]
        then
        yum install -y nodejs
        yum install -y npm
        fi
    redis-server -v
        if [ $? != 0 ]
        then
        yum -y install git
        yum -y install redis
        redis-server --daemonize yes
        systemctl enable redis.service
        fi
    git version
        if [ $? != 0 ]
        then
        yum -y install git
        fi
    
    ##yunzai
    cd "${myadress}/centos"
    [ -d "${yunzaiplugin}" ] || git clone https://gitee.com/Le-niao/Yunzai-Bot.git
    [ -d "${yunzaiplugin}" ] || rm -rf "${yunzai}"
    [ -d "${yunzaiplugin}" ] || echo "Installation failed安装失败" 
    [ -d "${yunzaiplugin}" ] || read -p "Enter回车并继续..." Enter
    [ -d "${yunzaiplugin}" ] || break

    cd "${yunzai}"
    ##miao
    [ -d "${yunzaimiao}" ] || git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
    [ -d "${yunzaimiao}" ] || rm -rf "${yunzai}/plugins/miao-plugin"
    [ -d "${yunzaimiao}" ] || echo "Installation failed安装失败"
    [ -d "${yunzaimiao}" ] || read -p "Enter回车并继续..." Enter
    [ -d "${yunzaimiao}" ] || break

    ##guoba
    [ -d "${yunzaiGuoba}" ] || git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin.git ./plugins/Guoba-Plugin/
    [ -d "${yunzaiGuoba}" ] || rm -rf "${yunzai}/plugins/Guoba-Plugin"
    [ -d "${yunzaiGuoba}" ] || echo "Installation failed安装失败"
    [ -d "${yunzaiGuoba}" ] || read -p "Enter回车并继续..." Enter
    [ -d "${yunzaiGuoba}" ] || break

    ##依赖
    npm install
    npm install image-size
    npm install express multer body-parser jsonwebtoken

    ##环境准备
    yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y 
    yum install libdrm libgbm libxshmfence -y
    yum install nss -y
    yum update nss -y
    #文字安装
    yum groupinstall fonts -y
    #安装Chromium
    node ./node_modules/puppeteer/install.js

    ##返回
    read -p "安装成功,请启动账号,回车并继续Enter..." Enter
    fi
    
    #启动
    if [ $OPTION = 2 ]
    then yunzaiverification
        if [ $? = "0" ]
        then
        cd "${yunzai}"
        node app.js
        fi
    fi   

    #登录
    if [ $OPTION = 3 ]
    then yunzaiverification
        if [ $? = "0" ]
        then
        cd "${yunzai}"
        npm login run
        fi
    fi   
    
    #更新
    if [ $OPTION = 4 ]
    then yunzaiverification
        if [ $? = "0" ]
        then
        cd "${yunzai}"
        git pull
        cd "${yunzai}/plugins/miao-plugin"
        git pull
        read -p "更新完成" Enter
        fi
    fi
    
    #卸载
    if [ $OPTION = 5 ]
    then yunzaiverification
        if [ $? = "0" ]
        then
        rm -rf "${yunzai}"
        read -p "卸载完成" Enter
        fi
    fi

    #返回
    cd "${myadress}"
else
    exit
fi
done

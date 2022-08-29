#!/bin/bash

yourv=$(cat /etc/redhat-release)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV2" ] || mkdir YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "#初始化失败"
[ -d ${myadress}"/YunzaiV3" ] || read -p "#回车并继续..." c
cd "${myadress}"

Yunzai33="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai33

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv" \
15 50 5 \
"1" "安装" \
"2" "启动" \
"3" "修改配置" \
"4" "修改主人" \
"5" "修改QQ" \
"6" "删除QQ" \
"7" "更新" \
"8" "卸载" \
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
[ -d ${myadress}"/YunzaiV3" ] || echo "#回车并继续..."
[ -d ${myadress}"/YunzaiV3" ] || read -p "#回车并继续..." c
[ -d ${myadress}"/YunzaiV3" ] || break
cd ${myadress}"/YunzaiV3"
[ -d ${Yunzai33}"/plugins" ] || git clone https://gitee.com/Le-niao/Yunzai-Bot.git
[ -d ${Yunzai33}"/plugins" ] || rm -rf ${Yunzai33} ""
[ -d ${Yunzai33}"/plugins" ] || echo "#安装失败" 
[ -d ${Yunzai33}"/plugins" ] || read -p "回车并继续..." c
[ -d ${Yunzai33}"/plugins" ] || break

##miao
cd "${Yunzai33}"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || rm -rf ${Yunzai33}"/plugins/miao-plugin"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || echo "#安装失败,已清除残留"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || read -p "回车并继续..." c
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || break

##依赖
cd "${Yunzai33}"
npm install
npm install image-size

##安装Chromium
yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y 
yum install libdrm libgbm libxshmfence -y
yum install nss -y
yum update nss -y
yum groupinstall fonts -y
node ./node_modules/puppeteer/install.js
echo "#安装成功"

##返回
cd "${myadress}"
read -p "回车并继续..." y
    fi
    
#启动
    if [ $OPTION = 2 ]
    then
[ -d ${Yunzai33}"/plugins" ] || echo "#请先安装"
[ -d ${Yunzai33}"/plugins" ] || read -p "回车并继续..." y
[ -d ${Yunzai33}"/plugins" ] || break
cd "${Yunzai33}"
node app.js
read -p "回车并继续..." y
    fi
    
#修改配置
    if [ $OPTION = 3 ]
    then
[ -d ${Yunzai33}"/plugins/example" ] || echo "#请先安装"
[ -d ${Yunzai33}"/plugins/example" ] || read -p "回车并继续..." y
[ -d ${Yunzai33}"/plugins/example" ] || break
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#您未配置"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || read -p "回车并继续..." y
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
[ -e ${Yunzai33}"/config/config/group.yaml" ] || echo "#您未配置"
[ -e ${Yunzai33}"/config/config/group.yaml" ] || read -p "回车并继续..." y
[ -e ${Yunzai33}"/config/config/group.yaml" ] || break
vi "${Yunzai33}/config/config/group.yaml"
    fi

#修改主人
    if [ $OPTION = 4 ]
    then
[ -d ${Yunzai33}"/plugins/example" ] || echo "#请先安装"
[ -d ${Yunzai33}"/plugins/example" ] || read -p "回车并继续..." y
[ -d ${Yunzai33}"/plugins/example" ] || break
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#您未配置"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || read -p "回车并继续..." y
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
[ -e ${Yunzai33}"/config/config/other.yaml" ] || echo "#您未配置"
[ -e ${Yunzai33}"/config/config/other.yaml" ] || read -p "回车并继续..." y
[ -e ${Yunzai33}"/config/config/other.yaml" ] || break
vi "${Yunzai33}/config/config/other.yaml"
    fi
    
#修改QQ
    if [ $OPTION = 5 ]
    then
[ -d ${Yunzai33}"/plugins/example" ] || echo "#请先安装"
[ -d ${Yunzai33}"/plugins/example" ] || read -p "回车并继续..." y
[ -d ${Yunzai33}"/plugins/example" ] || break
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#您未配置"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || read -p "回车并继续..." y
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
[ -e ${Yunzai33}"/config/config/other.yaml" ] || echo "#您未配置"
[ -e ${Yunzai33}"/config/config/other.yaml" ] || read -p "回车并继续..." y
[ -e ${Yunzai33}"/config/config/other.yaml" ] || break
vi "${Yunzai33}/config/config/qq.yaml"
    fi
    
#删除QQ
    if [ $OPTION = 6 ]
    then
[ -d ${Yunzai33}"/plugins/example" ] || echo "#请先安装"
[ -d ${Yunzai33}"/plugins/example" ] || read -p "回车并继续..." y
[ -d ${Yunzai33}"/plugins/example" ] || break
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#您未配置"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || read -p "回车并继续..." y
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
rm -rf ${Yunzai33}"/config/config/qq.yaml"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#配置删除成功！"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || read -p "回车并继续..." y
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
cd "${myadress}"
echo "#配置删除失败！"
read -p "回车并继续..." y
    fi
    
#更新
    if [ $OPTION = 7 ]
    then
[ -d ${Yunzai33}"/plugins/miao-plugin" ] || echo "#请先安装"
[ -d ${Yunzai33}"/plugins/miao-plugin" ] || read -p "回车并继续..." y
[ -d ${Yunzai33}"/plugins/miao-plugin" ] || break
cd "${Yunzai33}"
git pull
cd "${Yunzai33}/plugins/miao-plugin"
git pull
echo "#更新完成"
read -p "回车并继续..." y
cd ${myadress}""
    fi
    
#卸载
    if [ $OPTION = 8 ]
    then
[ -d ${Yunzai33}"/plugins" ] || echo "#请先安装"
[ -d ${Yunzai33}"/plugins" ] || read -p "回车并继续..." y
[ -d ${Yunzai33}"/plugins" ] || break
Choise=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv" \
15 50 3 \
"1" "卸载" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
rm -rf "${Yunzai33}"
[ -e ${Yunzai33} ] || echo "#卸载成功！"
[ -e ${Yunzai33} ] || read -p "回车并继续..." y
[ -e ${Yunzai33} ] || break
echo "#卸载失败！"
read -p "回车并继续..." y
fi
    fi
    
else
    exit
fi
done

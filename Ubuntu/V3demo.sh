#!/bin/bash
yourv=$(cat /etc/issue)
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

Yunzai33="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai33

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n$news" \
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
cd ${myadress}
apt-get update -y
apt-get upgrade -y

##node
node -v
if [ $? != 0 ]
then
curl -sL https://deb.nodesource.com/setup_17.x | bash
apt-get install -y nodejs
fi

##redis
redis-server -v
if [ $? != 0 ]
then
apt install redis
redis-server --daemonize yes
fi

##git
git version
if [ $? != 0 ]
then
apt install git -y
fi

##yunzai
[ -d ${myadress}"/YunzaiV3" ] || news="#初始化失败"
[ -d ${myadress}"/YunzaiV3" ] || break
cd ${myadress}"/YunzaiV3"
[ -d ${Yunzai33}"/plugins" ] || git clone https://gitee.com/yoimiya-kokomi/Yunzai-Bot
[ -d ${Yunzai33}"/plugins" ] || rm -rf ${Yunzai33} ""
[ -d ${Yunzai33}"/plugins" ] || news="#安装失败" 
[ -d ${Yunzai33}"/plugins" ] || break

##miao
cd "${Yunzai33}"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || rm -rf ${Yunzai33}"/plugins/miao-plugin"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || news="#安装失败"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || break

##依赖
cd "${Yunzai33}"
npm install

##安装Chromium
apt install chromium-browser -y
apt install -y --force-yes --no-install-recommends fonts-wqy-microhei
news="#安装成功"

##返回
cd "${myadress}"
    fi
    
#启动
    if [ $OPTION = 2 ]
    then
[ -d ${Yunzai33}"/plugins" ] || news="#请先安装"
[ -d ${Yunzai33}"/plugins" ] || break
cd "${Yunzai33}"
node app.js
    fi
    
#修改配置
    if [ $OPTION = 3 ]
    then
[ -d ${Yunzai33}"/plugins/example" ] || news="#请先安装"
[ -d ${Yunzai33}"/plugins/example" ] || break
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || news="#您未配置"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
[ -e ${Yunzai33}"/config/config/group.yaml" ] || news="#您未配置"
[ -e ${Yunzai33}"/config/config/group.yaml" ] || break
vi ${Yunzai33}"/config/config/group.yaml"
cd ${myadress}""
news="#修改成功！"
    fi

#修改主人
    if [ $OPTION = 4 ]
    then
[ -d ${Yunzai33}"/plugins/example" ] || news="#请先安装"
[ -d ${Yunzai33}"/plugins/example" ] || break
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || news="#您未配置"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
[ -e ${Yunzai33}"/config/config/other.yaml" ] || news="#您未配置"
[ -e ${Yunzai33}"/config/config/other.yaml" ] || break
vi ${Yunzai33}"/config/config/other.yaml"
cd ${myadress}""
news="#修改成功！"
    fi
    
#删除QQ
    if [ $OPTION = 5 ]
    then
[ -d ${Yunzai33}"/plugins/example" ] || news="#请先安装"
[ -d ${Yunzai33}"/plugins/example" ] || break
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || news="#您未配置"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
rm -rf ${Yunzai33}"/config/config/qq.yaml"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || news="#配置删除成功！"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
cd ${myadress}""
news="#配置删除失败！"
    fi
    
#更新
    if [ $OPTION = 6 ]
    then
[ -d ${Yunzai33}"/plugins/miao-plugin" ] || news="#请先安装"
[ -d ${Yunzai33}"/plugins/miao-plugin" ] || break
cd "${Yunzai33}"
git pull
cd ${Yunzai33}"/plugins/miao-plugin"
git pull
news="#更新完成"
cd ${myadress}""
    fi
    
#卸载
    if [ $OPTION = 7 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n##上下选择##左右确定取消" \
15 50 3 \
"1" "再次确认卸载" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
[ -d ${Yunzai33}"/plugins" ] || news="#请先安装"
[ -d ${Yunzai33}"/plugins" ] || break
rm -rf "${Yunzai33}"
[ -e ${Yunzai33} ] || news="#卸载成功！"
[ -e ${Yunzai33} ] || read -p "回车并继续..." z
[ -e ${Yunzai33} ] || break
news="#卸载失败！"
read -p "回车并继续..." z
fi
    fi
    
else
    exit
fi
done

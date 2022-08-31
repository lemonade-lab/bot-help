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
cd "${myadress}"

Yunzai22="${myadress}/YunzaiV2/Yunzai-Bot"
readonly Yunzai22

Yunzai33="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai33

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot》" \
--menu "$yourv\n$news" \
15 50 3 \
"1" "运行状态" \
"2" "启动V2" \
"3" "启动V3" \
"4" "停止V2" \
"5" "停止V3" \
"6" "启动V2V3" \
"7" "停止V2V3" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
     if [ $OPTION = 1 ]
     then
cd "${myadress}"
pm2 list
read -p "回车并继续..." c
     fi
     if [ $OPTION = 2 ]
     then
[ -d ${Yunzai22}"/plugins" ] || echo "#未安装V2！"
[ -e ${Yunzai22}"/config/config.js" ] || echo "#您未配置机器人V2QQ,需要初始化"
[ ! -e ${Yunzai22}"/config/config.js" ] || cd ${Yunzai22}""
[ ! -e ${Yunzai22}"/config/config.js" ] || npm stop
[ ! -e ${Yunzai22}"/config/config.js" ] || npm start
[ ! -e ${Yunzai22}"/config/config.js" ] || echo "#V2后台运行"
read -p "回车并继续..." c
     fi
     if [ $OPTION = 3 ]
     then
[ -d ${Yunzai33}"/plugins" ] || echo "#未安装V3！"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#您未配置机器人V3QQ"
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || cd ${Yunzai33}""
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || npm stop
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || npm start
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#V3后台运行"
read -p "回车并继续..." c
     fi
     if [ $OPTION = 4 ]
     then
[ -d ${Yunzai22}"/plugins" ] || echo "#未安装V2！"
[ ! -d ${Yunzai22}"/plugins" ] || cd ${Yunzai22}""
[ ! -d ${Yunzai22}"/plugins" ] || npm stop
[ ! -d ${Yunzai22}"/plugins" ] || echo "#V2关闭"
read -p "回车并继续..." c
     fi
     if [ $OPTION = 5 ]
     then
[ -d ${Yunzai33}"/plugins" ] || echo "#未安装V3！"
[ ! -d ${Yunzai33}"/plugins" ] || cd ${Yunzai33}""
[ ! -d ${Yunzai33}"/plugins" ] || npm stop
[ ! -d ${Yunzai33}"/plugins" ] || echo "#V3关闭"
read -p "回车并继续..." c
     fi
     if [ $OPTION = 6 ]
     then
[ -d ${Yunzai22}"/plugins" ] || echo "#未安装V2！"
[ -e ${Yunzai22}"/config/config.js" ] || echo "#您未配置机器人V2QQ,需要初始化"
[ ! -e ${Yunzai22}"/config/config.js" ] || cd ${Yunzai22}""
[ ! -e ${Yunzai22}"/config/config.js" ] || npm stop
[ ! -e ${Yunzai22}"/config/config.js" ] || npm start
[ ! -e ${Yunzai22}"/config/config.js" ] || echo "#V2后台运行"
[ -d ${Yunzai33}"/plugins" ] || echo "#未安装V3！"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#您未配置机器人V3QQ,需要初始化"
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || cd ${Yunzai33}""
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || npm stop
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || npm start
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "#V3后台运行"
read -p "回车并继续..." c
     fi
     if [ $OPTION = 7 ]
     then
[ -d ${Yunzai22}"/plugins" ] || echo "#未安装V2！"
[ ! -d ${Yunzai22}"/plugins" ] || cd ${Yunzai22}""
[ ! -d ${Yunzai22}"/plugins" ] || npm stop
[ ! -d ${Yunzai22}"/plugins" ] || echo "#V2关闭"
[ -d ${Yunzai33}"/plugins" ] || news="#未安装V3！"
[ ! -d ${Yunzai33}"/plugins" ] || cd ${Yunzai33}""
[ ! -d ${Yunzai33}"/plugins" ] || npm stop
[ ! -d ${Yunzai33}"/plugins" ] || echo "#V3关闭"
read -p "回车并继续..." c
     fi
else
    exit
fi
done

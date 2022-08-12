#!/bin/bash
myadress="/home/lighthouse"
readonly myadress
[ -d /home ] || echo "警告：不是Centos系统！退出执行！"
[ -d /home ] || exit
cd /home
[ -d ${myadress} ] || mkdir  lighthouse
[ -d ${myadress} ] || echo "初始化lighthouse目录失败！退出执行！"
cd ${myadress}""
[ -d ${myadress}"/YunzaiV2" ] || mkdir  YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir  YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "初始化Yunzai目录失败！退出执行！" 
[ -d ${myadress}"/YunzaiV3" ] || exit
cd ${myadress}""
Yunzai22="${myadress}/YunzaiV2/Yunzai-Bot"
readonly Yunzai22
Yunzai33="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai33
PS3="请选择: "
while true; 
do
echo "__________________________________________________"
echo "  《后台Yunzai-Bot控制面板》  "
echo "PM2：Node.js程序进程管理器"
echo "升级维护时不需要停止机器人"
echo "运行的机器人数目取决于CPU"
echo "__________________________________________________"
fruits1=(
 '状态pm2' 
 '重启V2' 
 '重启V3'  
 '停止V2' 
 '停止V3'
 '重启V2V3'
 '停止V2V3'
 '返回'
)
select version1 in ${fruits1[@]}
do
case $version1 in
'状态')
clear
cd ${myadress}""
pm2 list
break
;;
'重启V2')
clear

echo "您的选择是启动V2版本"
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -e ${Yunzai22}"/config/config.js" ] || echo "您未配置机器人V2QQ,需要初始化"
[ ! -e ${Yunzai22}"/config/config.js" ] || cd ${Yunzai22}""
[ ! -e ${Yunzai22}"/config/config.js" ] || npm stop
[ ! -e ${Yunzai22}"/config/config.js" ] || npm start
[ ! -e ${Yunzai22}"/config/config.js" ] || echo "V2后台运行"
cd ${myadress}""

break
;;
'重启V3')
clear
echo "您的选择是启动V3版本"
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "您未配置机器人V3QQ"
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || cd ${Yunzai33}""
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || npm stop
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || npm start
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "V3后台运行"
cd ${myadress}""

break
;;
'停止V2')
clear

[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ ! -d ${Yunzai22}"/plugins" ] || cd ${Yunzai22}""
[ ! -d ${Yunzai22}"/plugins" ] || npm stop
[ ! -d ${Yunzai22}"/plugins" ] ||  echo "V2关闭"
cd ${myadress}""


break
;;
'停止V3')
clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ ! -d ${Yunzai33}"/plugins" ] || cd ${Yunzai33}""
[ ! -d ${Yunzai33}"/plugins" ] || npm stop
[ ! -d ${Yunzai33}"/plugins" ] ||  echo "V3关闭"
cd ${myadress}""

break
;;
'重启V2V3')
clear
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -e ${Yunzai22}"/config/config.js" ] || echo "您未配置机器人V2QQ,需要初始化"
[ ! -e ${Yunzai22}"/config/config.js" ] || cd ${Yunzai22}""
[ ! -e ${Yunzai22}"/config/config.js" ] || npm stop
[ ! -e ${Yunzai22}"/config/config.js" ] || npm start
[ ! -e ${Yunzai22}"/config/config.js" ] || echo "V2后台运行"
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "您未配置机器人V3QQ,需要初始化"
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || cd ${Yunzai33}""
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || npm stop
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || npm start
[ ! -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "V3后台运行"
cd ${myadress}""
break
;;
'停止V2V3')
clear
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ ! -d ${Yunzai22}"/plugins" ] || cd ${Yunzai22}""
[ ! -d ${Yunzai22}"/plugins" ] || npm stop
[ ! -d ${Yunzai22}"/plugins" ] ||  echo "V2关闭"
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ ! -d ${Yunzai33}"/plugins" ] || cd ${Yunzai33}""
[ ! -d ${Yunzai33}"/plugins" ] || npm stop
[ ! -d ${Yunzai33}"/plugins" ] ||  echo "V3关闭"
cd ${myadress}""

break
;;
'返回')
clear
exit
;;
*)
clear
echo "#您的选择不存在，请重新选择！"
break
esac
done
done
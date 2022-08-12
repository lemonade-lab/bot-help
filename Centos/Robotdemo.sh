#!/bin/bash
[ -d /home ] || echo "警告：不是Centos系统！退出执行！"
[ -d /home ] || exit
cd /home
[ -d /home/lighthouse ] || mkdir  lighthouse
[ -d /home/lighthouse ] || echo "初始化lighthouse目录失败！退出执行！"
cd /home/lighthouse
[ -d /home/lighthouse/YunzaiV2 ] || mkdir  YunzaiV2
[ -d /home/lighthouse/YunzaiV3 ] || mkdir  YunzaiV3
[ -d /home/lighthouse/YunzaiV3 ] || echo "初始化Yunzai目录失败！退出执行！" 
[ -d /home/lighthouse/YunzaiV3 ] || exit
cd /home/lighthouse
PS3="请选择: "
cd /home/lighthouse
while true; 
do
echo "__________________________________________________"
echo "  《Yunzai控制面板》  "
echo "PM2：Node.js程序进程管理器"
echo "升级维护时不需要停止机器人"
echo "运行的机器人数目取决于CPU"
echo "__________________________________________________"
fruits1=(
 '状态' 
 '启动V2' 
 '启动V3'  
 '停止V2' 
 '停止V3'
 '启动V2V3'
 '停止V2V3'
 '返回'
)
select version1 in ${fruits1[@]}
do
case $version1 in
'状态')
clear
cd /home/lighthouse
pm2 list
break
;;
'启动V2')
clear

echo "您的选择是启动V2版本"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || echo "您未配置机器人V2QQ,需要初始化"
[ ! -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || npm stop
[ ! -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || npm start
[ ! -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || echo "V2后台运行"
cd /home/lighthouse

break
;;
'启动V3')
clear
echo "您的选择是启动V3版本"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "您未配置机器人V3QQ"
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || npm stop
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || npm start
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "V3后台运行"
cd /home/lighthouse

break
;;
'停止V2')
clear

[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || npm stop
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] ||  echo "V2关闭"
cd /home/lighthouse


break
;;
'停止V3')
clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || npm stop
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] ||  echo "V3关闭"
cd /home/lighthouse

break
;;
'启动V2V3')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || echo "您未配置机器人V2QQ,需要初始化"
[ ! -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || npm stop
[ ! -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || npm start
[ ! -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || echo "V2后台运行"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "您未配置机器人V3QQ,需要初始化"
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || npm stop
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || npm start
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "V3后台运行"
cd /home/lighthouse
break
;;
'停止V2V3')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || npm stop
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] ||  echo "V2关闭"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || npm stop
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] ||  echo "V3关闭"
cd /home/lighthouse

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
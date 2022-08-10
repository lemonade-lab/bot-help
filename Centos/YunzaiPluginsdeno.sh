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
while true;
do
echo "__________________________________________________"
echo "欢迎使用《Yunzai-Bot-Plugins》帮助"
echo "作者：bilibili柠檬冲水UP"
echo "版本：1.0.3"
echo "__________________________________________________"
fruits5=(
'逍遥图鉴' 
'成就帮助'
'闲心娱乐'
'插件安装' 
'插件列表'  
'返回'
)
select version5 in ${fruits5[@]}
do
case $version5 in
'逍遥图鉴')
clear
npm i yaml   #依赖 
npm i superagent   #依赖
npm i promise-retry  #依赖
y = '0'
echo "放入V2逍遥：2"
echo "放入V3逍遥：3"
echo "卸载V2逍遥：20"
echo "卸载V3逍遥：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 2 ]
then
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || break
cd /home/lighthouse/YunzaiV2/Yunzai-Bot
git clone https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 3 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || break
cd /home/lighthouse/YunzaiV3/Yunzai-Bot
git clone https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 20 ]
then
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || break
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 30 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin
echo "命令已执行！"
cd /home/lighthouse
fi
echo "您已返回！"
break
;;
'成就帮助')
clear
y = 0
echo "放入V2成就：2"
echo "放入V3成就：3"
echo "卸载V2成就：20"
echo "卸载V3成就：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 2 ]
then
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || echo "已安装成就！"
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || break
cd /home/lighthouse/YunzaiV2/Yunzai-Bot
git clone https://gitee.com/zolay-poi/achievements-plugin.git ./plugins/achievements-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $Y = 3 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || echo "已安装成就！"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || break
cd /home/lighthouse/YunzaiV3/Yunzai-Bot
git clone https://gitee.com/zolay-poi/achievements-plugin.git ./plugins/achievements-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 20 ]
then
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || echo "未安装成就"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || break
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 30 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || echo "未安装成就"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin
echo "命令已执行！"
cd /home/lighthouse
fi
echo "您已返回"
break
;;
'闲心')
clear
y = 0
echo "放入V3成就：3"
echo "卸载V3成就：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 3 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin] || echo "已安装成就！"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || break
cd /home/lighthouse/YunzaiV3/Yunzai-Bot
git clone https://gitee.com/xianxincoder/xianxin-plugin.git ./plugins/xianxin-plugin/  
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 30 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || echo "未安装闲心！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin
echo "命令已执行！"
cd /home/lighthouse
fi
echo "您已返回"
break
;;
'插件安装')
clear
echo "柠檬冲水：实力低微，认识不到大佬，非常抱歉！"
echo "注：该功能需插件作者授权！"
echo "公告：在此诚找有空写js插件的大佬！"
echo "公告：在此诚找能合作的朋友！"
echo "公告：如有意，联系企鹅1715713638，谢谢！"
break
;;
'插件列表')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot/lib/example
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "【V2插件列表】"
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || ls
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "【V3插件列表】"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || ls
break
;;
'返回')
clear
exit
;;
*)
clear
echo "#######提示：您的选择不存在！######"
break
esac
done
done
break
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
Yunzai22="/home/lighthouse/YunzaiV2/Yunzai-Bot"
Yunzai33="/home/lighthouse/YunzaiV3/Yunzai-Bot"
PS3="请选择: "
while true;
do
echo "__________________________________________________"
echo "欢迎使用《Yunzai-Bot-Plugins》帮助"
echo "作者：bilibili柠檬冲水UP"
echo "提示：未加载的，请先加载依赖"
echo "2022年8月12日V1.1.1"
echo "__________________________________________________"
fruits5=(
'加载依赖' 
'插件列表'
'逍遥图鉴' 
'成就帮助'
'闲心娱乐'
'我要修仙'  
'插件安装'
'插件删除'
'选择更新'
'回滚更新'
'返回'
)
select version5 in ${fruits5[@]}
do
case $version5 in
'加载依赖')
clear
npm i yaml   #依赖 
npm i superagent   #依赖
npm i promise-retry  #依赖
break
;;
'逍遥图鉴')
echo "放入V2逍遥：2"
echo "放入V3逍遥：3"
echo "卸载V2逍遥：20"
echo "卸载V3逍遥：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 2 ]
then
[ -d ${yunzai22}/plugins ] || 
[ -d ${yunzai22}/plugins ] || echo "未安装V2！"
[ -d ${yunzai22}/plugins ] || break
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || 
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || break
clear
cd ${yunzai22}
git clone https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 3 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || clear
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || break
clear
cd ${yunzai33}
git clone https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 20 ]
then
[ -d ${yunzai22}/plugins ] || clear
[ -d ${yunzai22}/plugins ] || echo "未安装V2！"
[ -d ${yunzai22}/plugins ] || break
[ -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || clear
[ -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || break
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || cd ${yunzai22}
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || rm -rf ${yunzai22}/plugins/xiaoyao-cvs-plugin
clear
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 30 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || clear
[ -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || break
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || cd ${yunzai33}
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || rm -rf ${yunzai33}/plugins/xiaoyao-cvs-plugin
clear
echo "命令已执行！"
cd /home/lighthouse
fi
echo "您已返回！"
break
;;
'成就帮助')
echo "放入V2成就：2"
echo "放入V3成就：3"
echo "卸载V2成就：20"
echo "卸载V3成就：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 2 ]
then
[ -d ${yunzai22}/plugins ] || clear
[ -d ${yunzai22}/plugins ] || echo "未安装V2！"
[ -d ${yunzai22}/plugins ] || break
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || clear
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || echo "已安装成就！"
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || break
clear
cd ${yunzai22}
git clone https://gitee.com/zolay-poi/achievements-plugin.git ./plugins/achievements-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 3 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || clear
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || echo "已安装成就！"
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || break
cd ${yunzai33}
git clone https://gitee.com/zolay-poi/achievements-plugin.git ./plugins/achievements-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 20 ]
then
[ -d ${yunzai22}/plugins ] || clear
[ -d ${yunzai22}/plugins ] || echo "未安装V2！"
[ -d ${yunzai22}/plugins ] || break
[ -d ${yunzai22}/plugins/achievements-plugin ] || clear
[ -d ${yunzai22}/plugins/achievements-plugin ] || echo "未安装成就"
[ -d ${yunzai22}/plugins/achievements-plugin ] || break
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || cd ${yunzai22}
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || rm -rf ${yunzai22}/plugins/achievements-plugin
clear
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 30 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ -d ${yunzai33}/plugins/achievements-plugin ] || clear
[ -d ${yunzai33}/plugins/achievements-plugin ] || echo "未安装成就"
[ -d ${yunzai33}/plugins/achievements-plugin ] || break
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || cd ${yunzai33}
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || rm -rf ${yunzai33}/plugins/achievements-plugin
clear
echo "命令已执行！"
cd /home/lighthouse
fi
echo "您已返回"
break
;;
'闲心娱乐')
echo "放入V3闲心：3"
echo "卸载V3闲心：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 3 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || clear
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || echo " 已安装闲心！"
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || break
clear
cd ${yunzai33}
git clone https://gitee.com/xianxincoder/xianxin-plugin.git ./plugins/xianxin-plugin/  
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 30 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ -d ${yunzai33}/plugins/xianxin-plugin ] || clear
[ -d ${yunzai33}/plugins/xianxin-plugin ] || echo "未安装闲心！"
[ -d ${yunzai33}/plugins/xianxin-plugin ] || break
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || cd ${yunzai33}
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || rm -rf ${yunzai33}/plugins/xianxin-plugin
clear

echo "命令已执行！"
cd /home/lighthouse
fi
echo "您已返回"
break
;;
'我要修仙')
echo "放入V3修仙：3"
echo "卸载V3修仙：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 3 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || clear
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || echo " 已安装修仙！"
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || break
clear
cd ${yunzai33}
git clone https://gitee.com/waterfeet/xiuxian-emulator-plugin ./plugins/xiuxian-emulator-plugin/  
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 30 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || clear
[ -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || echo "未安装修仙！"
[ -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || break
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || cd ${yunzai33}
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || rm -rf ${yunzai33}/plugins/xiuxian-emulator-plugin
clear
echo "命令已执行！"
cd /home/lighthouse
fi
echo "您已返回"
break
;;
'插件列表')
clear
[ -d ${yunzai22}/plugins ] || echo "未安装V2！"
[ ! -d ${yunzai22}/plugins ] || cd ${yunzai22}/lib/example
[ ! -d ${yunzai22}/plugins ] || echo "【V2插件列表】"
[ ! -d ${yunzai22}/plugins ] || ls
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ ! -d ${yunzai33}/plugins ] || cd ${yunzai33}/plugins/example
[ ! -d ${yunzai33}/plugins ] || echo "【V3插件列表】"
[ ! -d ${yunzai33}/plugins ] || ls
cd /home/lighthouse
break
;;
'插件安装')
clear
echo "柠檬冲水：实力低微，认识不到大佬，非常抱歉！"
echo "注：该功能需插件作者授权！"
echo "注：不做推广使用，仅限作者个人使用"
echo "公告：在此诚找有空写js插件的大佬！"
echo "公告：在此诚找能合作的朋友！"
echo "公告：如有意，联系企鹅1715713638，谢谢！"
read -p "任意值返回：" x
if [ $x = 2 ]
then 
[ -d ${yunzai22}/plugins ] || echo "未安装V2！"
[ -d ${yunzai22}/plugins ] || break
[ -d /Yunzai-Bot-Help/Allfile/plugins/ ] || echo "Yunzai-Bot-Help版本错误！"
[ -d /Yunzai-Bot-Help/Allfile/plugins/ ] || break
cd /Yunzai-Bot-Help/Allfile/plugins
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || git clone https://gitee.com/nada-plugin/nada-plugin.git
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || echo "功能失效了，请等待更新！"
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || break
[ ! -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || echo "已加载插件！"
cd /Yunzai-Bot-Help/Allfile/plugins/nada-plugin
cp v2plugin.zip ${yunzai22}/lib/example
[ -e ${yunzai22}/lib/example/v2plugin.zip ] || echo "版本插件不存在"
[ -e ${yunzai22}/lib/example/v2plugin.zip ] || break
cd ${yunzai22}/lib/example
unzip v2plugin.zip
echo "操作已执行"
cd /home/lighthouse
break
fi
if [ $x = 3 ]
then 
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ -d /Yunzai-Bot-Help/Allfile/plugins/ ] || echo "Yunzai-Bot-Help版本错误！"
[ -d /Yunzai-Bot-Help/Allfile/plugins/ ] || break
cd /Yunzai-Bot-Help/Allfile/plugins
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || git clone https://gitee.com/nada-plugin/nada-plugin.git
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || echo "功能失效了，请等待更新！"
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || break
[ ! -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || echo "已加载插件！"
cd /Yunzai-Bot-Help/Allfile/plugins/nada-plugin
cp v3plugin.zip ${yunzai33}/plugins/example
[ -e ${yunzai33}/plugins/example/v3plugin.zip ] || echo "版本插件不存在"
[ -e ${yunzai33}/plugins/example/v3plugin.zip ] || break
cd ${yunzai33}/plugins/example
unzip v3plugin.zip
echo "操作已执行"
cd /home/lighthouse
break
fi
echo "您已返回！"
break
;;
'插件删除')
clear
read -p "选择版本:" x
if [ $x = 2 ]
then 
[ -d ${yunzai22}/plugins ] || echo "未安装V2！"
[ -d ${yunzai22}/plugins ] || break
[ ! -d ${yunzai22}/plugins ] || cd ${yunzai22}/lib/example
[ ! -d ${yunzai22}/plugins ] || echo "【V2插件列表】"
[ ! -d ${yunzai22}/plugins ] || ls
read -p "插件名：" y
[ -e ${yunzai22}/lib/example/$y ] || echo "插件不存在！"
[ -e ${yunzai22}/lib/example/$y ] || break
rm -rf ${yunzai22}/lib/example/$y
echo "操作已执行"
break
fi
if [ $x = 3 ]
then 
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins ] || cd ${yunzai33}/plugins/example
[ ! -d ${yunzai33}/plugins ] || echo "【V3插件列表】"
[ ! -d ${yunzai33}/plugins ] || ls
read -p "插件名：" y
[ -e ${yunzai33}/plugins/example/$y ] || echo "插件不存在！"
[ -e ${yunzai33}/plugins/example/$y ] || break
rm -rf ${yunzai33}/example/plugins/$y
echo "操作已执行"
break
fi
echo "你选择了未知版本！"
break
;;
'选择更新')
clear
echo "更新图鉴V2：12"
echo "更新图鉴V3：13"
echo "更新成就V2：22"
echo "更新成就V3：23"
echo "更新闲心V3：33"
echo "更新修仙V3：43"
echo "更新插件：0"
echo "任意值返回！"
read -p "请选择：" y
if [ $y = 12 ]
then
[ -d ${yunzai22}/plugins ] || 
[ -d ${yunzai22}/plugins ] || echo "未安装V2！"
[ -d ${yunzai22}/plugins ] || break
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || 
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || cd ${yunzai22}/plugins/xiaoyao-cvs-plugin
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || git pull
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || echo "命令已执行"
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi 
if [ $y = 13 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || clear
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || cd ${yunzai33}/plugins/xiaoyao-cvs-plugin
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || git pull
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || echo "命令已执行"
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi 
if [ $y = 22 ]
then
[ -d ${yunzai22}/plugins ] || clear
[ -d ${yunzai22}/plugins ] || echo "未安装V2！"
[ -d ${yunzai22}/plugins ] || break
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || clear
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || echo "已安装成就！"
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || cd ${yunzai22}/plugins/achievements-plugin
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || git pull
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || echo "命令已执行"
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi 
if [ $y = 23 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || clear
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || echo "已安装成就！"
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || cd ${yunzai33}/plugins/achievements-plugin
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || git pull
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || echo "命令已执行"
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi 
if [ $y = 33 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || clear
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || echo " 已安装闲心！"
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || cd ${yunzai33}/plugins/xianxin-plugin
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || git pull
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || echo "命令已执行"
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi 
if [ $y = 43 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || clear
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || echo " 已安装修仙！"
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || cd ${yunzai33}/plugins/xiuxian-emulator-plugin
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || git pull
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || echo "命令已执行"
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi
if [ $y = 0 ]
then
echo "功能等添加"
fi 

break
;;
'回滚更新')
clear
echo "回滚图鉴V2：12"
echo "回滚图鉴V3：13"
echo "回滚成就V2：22"
echo "回滚成就V3：23"
echo "回滚闲心V3：33"
echo "回滚修仙V3：43"
echo "回滚插件：0"
echo "任意值返回！"
read -p "请选择：" y
if [ $y = 12 ]
then
[ -d ${yunzai22}/plugins ] || 
[ -d ${yunzai22}/plugins ] || echo "未安装V2！"
[ -d ${yunzai22}/plugins ] || break
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || 
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || cd ${yunzai22}/plugins/xiaoyao-cvs-plugin
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || git revert
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || echo "命令已执行"
[ ! -d ${yunzai22}/plugins/xiaoyao-cvs-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi 
if [ $y = 13 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || clear
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || cd ${yunzai33}/plugins/xiaoyao-cvs-plugin
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || git revert
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || echo "命令已执行"
[ ! -d ${yunzai33}/plugins/xiaoyao-cvs-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi 
if [ $y = 22 ]
then
[ -d ${yunzai22}/plugins ] || clear
[ -d ${yunzai22}/plugins ] || echo "未安装V2！"
[ -d ${yunzai22}/plugins ] || break
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || clear
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || echo "已安装成就！"
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || cd ${yunzai22}/plugins/achievements-plugin
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || git revert
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || echo "命令已执行"
[ ! -d ${yunzai22}/plugins/achievements-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi 
if [ $y = 23 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || clear
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || echo "已安装成就！"
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || cd ${yunzai33}/plugins/achievements-plugin
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || git revert
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || echo "命令已执行"
[ ! -d ${yunzai33}/plugins/achievements-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi 
if [ $y = 33 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || clear
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || echo " 已安装闲心！"
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || cd ${yunzai33}/plugins/xianxin-plugin
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || git revert
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || echo "命令已执行"
[ ! -d ${yunzai33}/plugins/xianxin-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi 
if [ $y = 43 ]
then
[ -d ${yunzai33}/plugins ] || clear
[ -d ${yunzai33}/plugins ] || echo "未安装V3！"
[ -d ${yunzai33}/plugins ] || break
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || clear
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || echo " 已安装修仙！"
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || cd ${yunzai33}/plugins/xiuxian-emulator-plugin
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || git revert
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || echo "命令已执行"
[ ! -d ${yunzai33}/plugins/xiuxian-emulator-plugin ] || break
cd /home/lighthouse
echo "执行出错啦！"
fi
if [ $y = 0 ]
then
echo "功能等添加"
fi 
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
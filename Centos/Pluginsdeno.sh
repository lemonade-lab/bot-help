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
echo "提示：未加载的，请先加载依赖"
echo "版本：1.1.0"
echo "__________________________________________________"
fruits5=(
'加载依赖' 
'逍遥图鉴' 
'成就帮助'
'闲心娱乐' 
'插件列表'
'插件安装'
'插件删除'
'更新帮助'
'回滚插件'
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
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || 
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || 
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || break
clear
cd /home/lighthouse/YunzaiV2/Yunzai-Bot
git clone https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 3 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || clear
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || break
clear
cd /home/lighthouse/YunzaiV3/Yunzai-Bot
git clone https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 20 ]
then
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || break
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/xiaoyao-cvs-plugin
clear
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 30 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || echo "已安装图鉴！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin ] || rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xiaoyao-cvs-plugin
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
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || clear
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || echo "已安装成就！"
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || break
clear
cd /home/lighthouse/YunzaiV2/Yunzai-Bot
git clone https://gitee.com/zolay-poi/achievements-plugin.git ./plugins/achievements-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 3 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || clear
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || echo "已安装成就！"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || break
cd /home/lighthouse/YunzaiV3/Yunzai-Bot
git clone https://gitee.com/zolay-poi/achievements-plugin.git ./plugins/achievements-plugin/
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 20 ]
then
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || echo "未安装成就"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || break
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin ] || rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/achievements-plugin
clear
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 30 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || echo "未安装成就"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin ] || rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/achievements-plugin
clear
echo "命令已执行！"
cd /home/lighthouse
fi
echo "您已返回"
break
;;
'闲心娱乐')
echo "放入V3成就：3"
echo "卸载V3成就：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 3 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || clear
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || echo " 已安装成就！"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || break
clear
cd /home/lighthouse/YunzaiV3/Yunzai-Bot
git clone https://gitee.com/xianxincoder/xianxin-plugin.git ./plugins/xianxin-plugin/  
echo "命令已执行！"
cd /home/lighthouse
fi
if [ $y = 30 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || echo "未安装闲心！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin ] || rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/xianxin-plugin
clear

echo "命令已执行！"
cd /home/lighthouse
fi
echo "您已返回"
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
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ -d /Yunzai-Bot-Help/Allfile/plugins/ ] || echo "Yunzai-Bot-Help版本错误！"
[ -d /Yunzai-Bot-Help/Allfile/plugins/ ] || break
cd /Yunzai-Bot-Help/Allfile/plugins
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || git clone https://gitee.com/nada-plugin/nada-plugin.git
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || echo "功能失效了，请等待更新！"
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || break
[ ! -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || echo "已加载插件！"
cd /Yunzai-Bot-Help/Allfile/plugins/nada-plugin
cp v2plugin.zip /home/lighthouse/YunzaiV2/Yunzai-Bot/lib/example
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/lib/example/v2plugin.zip ] || echo "版本插件不存在"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/lib/example/v2plugin.zip ] || break
cd /home/lighthouse/YunzaiV2/Yunzai-Bot/lib/example
unzip v2plugin.zip
echo "操作已执行"
cd /home/lighthouse
break
fi
if [ $x = 3 ]
then 
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ -d /Yunzai-Bot-Help/Allfile/plugins/ ] || echo "Yunzai-Bot-Help版本错误！"
[ -d /Yunzai-Bot-Help/Allfile/plugins/ ] || break
cd /Yunzai-Bot-Help/Allfile/plugins
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || git clone https://gitee.com/nada-plugin/nada-plugin.git
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || echo "功能失效了，请等待更新！"
[ -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || break
[ ! -e /Yunzai-Bot-Help/Allfile/plugins/nada-plugin/README.md ] || echo "已加载插件！"
cd /Yunzai-Bot-Help/Allfile/plugins/nada-plugin
cp v3plugin.zip /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example/v3plugin.zip ] || echo "版本插件不存在"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example/v3plugin.zip ] || break
cd /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example
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
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot/lib/example
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "【V2插件列表】"
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || ls
read -p "插件名：" y
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/lib/example/$y ] || echo "插件不存在！"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/lib/example/$y ] || break
rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot/lib/example/$y
echo "操作已执行"
break
fi
if [ $x = 3 ]
then 
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "【V3插件列表】"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || ls
read -p "插件名：" y
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example/$y ] || echo "插件不存在！"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example/$y ] || break
rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot/example/plugins/$y
echo "操作已执行"
break
fi
echo "你选择了未知版本！"
break
;;
'更新帮助')
clear
echo "更新图鉴：2"
echo "更新成就：3"
echo "更新闲心：4"
echo "更新插件：5"
echo "任意值返回！"
read -p "请选择：" y
echo "更能待添加！"
break
;;
'回滚插件')
clear
echo "回滚图鉴：2"
echo "回滚成就：3"
echo "回滚闲心：5"
echo "回滚插件：5"
echo "任意值返回！"
read -p "请选择：" y
echo "更能待添加！"
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
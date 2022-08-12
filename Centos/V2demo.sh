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
echo "欢迎使用《Yunzai-Bot-V2》安装"
echo "作者：bilibili柠檬冲水UP"
echo "提示：严格按顺序安装"
echo "版本：1.1.0"
echo "__________________________________________________"
fruits3=( 
     '安装BotV2' 
     '安装miaoV2' 
     '依赖加载'  
     '安装Chromium'   
     '初始化启动'  
     '修改配置'   
     '删除配置'   
     '更新'   
     '卸载'   
     '返回' 
)
select version3 in ${fruits3[@]}
do
case $version3 in
'安装BotV2')
clear
cd /home/lighthouse
node -v
if [ $? = 0 ] ; then
echo "Node.js已安装"
else
echo "Node.js未安装"
break
fi
redis-server -v
if [ $? = 0 ] ; then
echo "Redis已安装"
else
echo "Redis未安装"
break
fi
git version
if [ $? = 0 ] ; then
echo "Git已安装"
else
echo "Git未安装"
break
fi
echo "正在安装Yunzai-BotV2，请耐心等待..."
[ -d /home/lighthouse/YunzaiV2 ] || echo "初始化目录失败，退出执行！"
[ -d /home/lighthouse/YunzaiV2 ] || break
cd /home/lighthouse/YunzaiV2
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || git clone https://gitee.com/yoimiya-kokomi/Yunzai-Bot
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "YunzaiV2安装失败！" 
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot 
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "YunzaiV2残留已清除！" 
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
echo "Yunzai-BotV2安装成功！"
cd /home/lighthouse/
break
;;
'安装miaoV2')
clear
echo "正在安装miao-plugin，请耐心等待..."
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2" 
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
cd /home/lighthouse/YunzaiV2/Yunzai-Bot
git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/miao-plugin/resources ] || echo "miao-pluginV2安装失败！" 
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/miao-plugin/resources ] || rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/miao-plugin
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/miao-plugin/resources ] || break
echo "miao-pluginV2安装成功！"
cd /home/lighthouse/
break
;;
'依赖加载')
clear
echo "正在加载，请耐心等待..."
echo "若是卡住太久，可按CTRL+Z退出后，重新执行"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
cd /home/lighthouse/YunzaiV2/Yunzai-Bot
npm install
echo "加载成功！"
cd /home/lighthouse/
break
;;
'安装Chromium')
clear
echo "正在安装Chromium，请耐心等待..."
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2" 
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
cd /home/lighthouse/YunzaiV2/Yunzai-Bot
yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y 
yum install libdrm libgbm libxshmfence -y
yum install nss -y
yum update nss -y
yum groupinstall fonts -y
echo "基础环境检测完成，正在安装hromium...."
echo "若网速过慢，可按CTRL+Z退出，重新执行"
echo "若受服务器限制，可尝试重启"
node ./node_modules/puppeteer/install.js
echo "Chromium安装成功！"
cd /home/lighthouse/
break
;;
'更新')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
echo "正在更新Yunzai-BotV2..."
cd /home/lighthouse/YunzaiV2/Yunzai-Bot
git pull
echo "Yunzai-BotV2更新命令执行完成！"
cd /home/lighthouse
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/miao-plugin ] || echo "请先安装miao-pluginV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/miao-plugin ] || break
echo "正在更新miao-pluginV2..."
cd /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/miao-plugin
git pull
echo "miao-pluginV2更新命令执行完成！"
cd /home/lighthouse
break
;;
'初始化启动')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
cd /home/lighthouse
cd /home/lighthouse/YunzaiV2/Yunzai-Bot
echo "初始化完成后,按CTRL+Z退出"
node app.js
break
;;
'修改配置')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || echo "您未配置机器人V2QQ"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || break
vi /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js
cd /home/lighthouse
break
;;
'删除配置')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || echo "您未配置机器人V2QQ"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || break
rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || echo "配置删除成功！"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || break
cd /home/lighthouse
echo "配置删除失败！"
break
;;
'卸载')
clear
echo "警告！"
echo "警告！"
echo "警告！"
echo "输入0确定卸载"
echo "任意值返回"
read -p "请选择：" x
if [ $x = 0 ]
then
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot ] || echo "卸载Yunzai-BotV2成功！"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot ] || break
cd /home/lighthouse
echo "卸载Yunzai-BotV2失败！"
else
echo "您已取消卸载"
fi
break
;;
'返回')
clear
exit
;;
*)
clear
cd /home/lighthouse/
echo "#######提示：您的选择不存在！######"
break
esac
done
done
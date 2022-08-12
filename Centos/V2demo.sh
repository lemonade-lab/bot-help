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
PS3="请选择: "
while true; 
do
echo "__________________________________________________"
echo "欢迎使用《Yunzai-Bot-V2》安装"
echo "作者：bilibili柠檬冲水UP"
echo "提示：严格按顺序安装"
echo "2022年8月12日V1.1.1"
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
cd ${myadress}
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
[ -d ${myadress}"/YunzaiV2" ] || echo "初始化目录失败，退出执行！"
[ -d ${myadress}"/YunzaiV2" ] || break
cd ${myadress}"/YunzaiV2"
[ -d ${Yunzai22}"/plugins" ] || git clone https://gitee.com/yoimiya-kokomi/Yunzai-Bot
[ -d ${Yunzai22}"/plugins" ] || echo "YunzaiV2安装失败！" 
[ -d ${Yunzai22}"/plugins" ] || rm -rf ${Yunzai22} ""
[ -d ${Yunzai22}"/plugins" ] || echo "YunzaiV2残留已清除！" 
[ -d ${Yunzai22}"/plugins" ] || break
echo "Yunzai-BotV2安装成功！"
cd ${myadress}""
break
;;
'安装miaoV2')
clear
echo "正在安装miao-plugin，请耐心等待..."
[ -d ${Yunzai22}"/plugins" ] || echo "请先安装Yunzai-BotV2" 
[ -d ${Yunzai22}"/plugins" ] || break
cd ${Yunzai22}""
git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || echo "miao-pluginV2安装失败！" 
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || rm -rf ${Yunzai22}"/plugins/miao-plugin"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources" ] || break
echo "miao-pluginV2安装成功！"
cd ${myadress}""
break
;;
'依赖加载')
clear
echo "正在加载，请耐心等待..."
echo "若是卡住太久，可按CTRL+Z退出后，重新执行"
[ -d ${Yunzai22}"/plugins" ] || echo "请先安装Yunzai-BotV2"
[ -d ${Yunzai22}"/plugins" ] || break
cd ${Yunzai22}""
npm install
echo "加载成功！"
cd ${myadress}""
break
;;
'安装Chromium')
clear
echo "正在安装Chromium，请耐心等待..."
[ -d ${Yunzai22}"/plugins" ] || echo "请先安装Yunzai-BotV2" 
[ -d ${Yunzai22}"/plugins" ] || break
cd ${Yunzai22}""
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
cd ${myadress}""
break
;;
'更新')
clear
[ -d ${Yunzai22}"/plugins" ] || echo "请先安装Yunzai-BotV2"
[ -d ${Yunzai22}"/plugins" ] || break
echo "正在更新Yunzai-BotV2..."
cd ${Yunzai22}""
git pull
echo "Yunzai-BotV2更新命令执行完成！"
cd ${myadress}""
[ -d ${Yunzai22}"/plugins/miao-plugin" ] || echo "请先安装miao-pluginV2"
[ -d ${Yunzai22}"/plugins/miao-plugin" ] || break
echo "正在更新miao-pluginV2..."
cd ${Yunzai22}"/plugins/miao-plugin"
git pull
echo "miao-pluginV2更新命令执行完成！"
cd ${myadress}""
break
;;
'初始化启动')
clear
[ -d ${Yunzai22}"/plugins" ] || echo "请先安装Yunzai-BotV2"
[ -d ${Yunzai22}"/plugins" ] || break
cd ${myadress}""
cd ${Yunzai22}""
echo "初始化完成后,按CTRL+Z退出"
node app.js
break
;;
'修改配置')
clear
[ -d ${Yunzai22}"/plugins" ] || echo "请先安装Yunzai-BotV2"
[ -d ${Yunzai22}"/plugins" ] || break
[ -e ${Yunzai22}"/config/config.js" ] || echo "您未配置机器人V2QQ"
[ -e ${Yunzai22}"/config/config.js" ] || break
vi ${Yunzai22}"/config/config.js"
cd ${myadress}""
break
;;
'删除配置')
clear
[ -d ${Yunzai22}"/plugins" ] || echo "请先安装Yunzai-BotV2"
[ -d ${Yunzai22}"/plugins" ] || break
[ -e ${Yunzai22}"/config/config.js" ] || echo "您未配置机器人V2QQ"
[ -e ${Yunzai22}"/config/config.js" ] || break
rm -rf ${Yunzai22}"/config/config.js"
[ -e ${Yunzai22}"/config/config.js" ] || echo "配置删除成功！"
[ -e ${Yunzai22}"/config/config.js" ] || break
cd ${myadress}""
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
[ -d ${Yunzai22}"/plugins" ] || echo "请先安装Yunzai-BotV2"
[ -d ${Yunzai22}"/plugins" ] || break
rm -rf ${Yunzai22}""
[ -e ${Yunzai22} ] || echo "卸载Yunzai-BotV2成功！"
[ -e ${Yunzai22} ] || break
cd ${myadress}""
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
cd ${myadress}""
echo "#######提示：您的选择不存在！######"
break
esac
done
done
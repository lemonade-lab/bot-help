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
Yunzai33="/home/lighthouse/YunzaiV3/Yunzai-Bot"
while true; 
do
echo "__________________________________________________"
echo "欢迎使用《Yunzai-Bot-V3》安装"
echo "作者：bilibili柠檬冲水UP"
echo "提示：严格按顺序安装"
echo "2022年8月12日V1.1.1"
echo "__________________________________________________"
fruits4=(
    '安装BotV3' 
    '安装miaoV3' 
    '依赖加载'  
    '安装Chromium'  
    '初始化启动'  
    '修改group配置'  
    '修改other配置'   
    '删除QQ配置'  
    '更新'  
    '卸载'   
    '返回'
)
select version4 in ${fruits4[@]}
do
case $version4 in
'安装BotV3')
clear
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
echo "正在安装Yunzai-BotV3，请耐心等待..."
[ -d /home/lighthouse/YunzaiV3 ] || echo "初始化目录失败，退出执行！"
[ -d /home/lighthouse/YunzaiV3 ] || break
cd /home/lighthouse/YunzaiV3
[ -d ${yunzai33}/plugins/example ] || git clone https://gitee.com/Le-niao/Yunzai-Bot.git
[ -d ${yunzai33}/plugins/example ] || echo "Yunzai安装失败！" 
[ -d ${yunzai33}/plugins/example ] || rm -rf ${yunzai33} 
[ -d ${yunzai33}/plugins/example ] || echo "Yunzai残留已清除！" 
[ -d ${yunzai33}/plugins/example ] || break
echo "Yunzai-BotV3安装成功！"
cd /home/lighthouse/
break
;;
'安装miaoV3')
clear
echo "正在安装miao-plugin，请耐心等待..."
[ -d ${yunzai33}/plugins/example ] || echo "请先安装Yunzai-BotV3" 
[ -d ${yunzai33}/plugins/example ] || break
cd ${yunzai33}
npm install image-size
git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
[ -d ${yunzai33}/plugins/miao-plugin/resources ] || echo "miao-pluginV3安装失败！" 
[ -d ${yunzai33}/plugins/miao-plugin/resources ] || rm -rf ${yunzai33}/plugins/miao-plugin
[ -d ${yunzai33}/plugins/miao-plugin/resources ] || break
echo "miao-plugin安装成功！"
cd /home/lighthouse/
break
;;
'依赖加载')
clear
echo "正在加载，请耐心等待..."
echo "若是卡住太久，可按CTRL+Z退出"
[ -d ${yunzai33} ] || echo "请先安装Yunzai-BotV3"
[ -d ${yunzai33} ] || break
cd ${yunzai33}
npm install
echo "加载成功！"
cd /home/lighthouse/
break
;;
'安装Chromium')
clear
[ -d ${yunzai33}/plugins/example ] || echo "请先安装Yunzai-BotV3" 
[ -d ${yunzai33}/plugins/example ] || break
cd ${yunzai33}
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
'初始化启动')
clear
[ -d ${yunzai33}/plugins ] || echo "请先安装Yunzai-BotV3"
[ -d ${yunzai33}/plugins ] || break
cd ${yunzai33}
echo "初始化完成后,按CTRL+Z退出"
echo "重新执行脚本,以后台启动Yunzai-Bot"
node app.js
break
;;
'修改group配置')
clear
[ -d ${yunzai33}/plugins/example ] || echo "请先安装Yunzai-BotV3"
[ -d ${yunzai33}/plugins/example ] || break
[ -e ${yunzai33}/config/config/qq.yaml ] || echo "您未配置机器人V3QQ"
[ -e ${yunzai33}/config/config/qq.yaml ] || break
[ -e ${yunzai33}/config/config/group.yaml ] || echo "您未配置机器人"
[ -e ${yunzai33}/config/config/group.yaml ] || break
vi ${yunzai33}/config/config/group.yaml
cd /home/lighthouse
echo "修改成功！"
break
;;
'修改other配置')
clear
[ -d ${yunzai33}/plugins/example ] || echo "请先安装Yunzai-BotV3"
[ -d ${yunzai33}/plugins/example ] || break
[ -e ${yunzai33}/config/config/qq.yaml ] || echo "您未配置机器人V3QQ"
[ -e ${yunzai33}/config/config/qq.yaml ] || break
[ -e ${yunzai33}/config/config/other.yaml ] || echo "您未配置机器人"
[ -e ${yunzai33}/config/config/other.yaml ] || break
vi ${yunzai33}/config/config/other.yaml
cd /home/lighthouse
echo "修改成功！"
break
;;
'删除QQ配置')
clear
[ -d ${yunzai33}/plugins/example ] || echo "请先安装Yunzai-BotV3"
[ -d ${yunzai33}/plugins/example ] || break
[ -e ${yunzai33}/config/config/qq.yaml ] || echo "您未配置机器人V3QQ"
[ -e ${yunzai33}/config/config/qq.yaml ] || break
rm -rf ${yunzai33}/config/config/qq.yaml
[ -e ${yunzai33}/config/config/qq.yaml ] || echo "配置删除成功！"
[ -e ${yunzai33}/config/config/qq.yaml ] || break
cd /home/lighthouse
echo "配置删除失败！"
break
;;
'更新')
clear
[ -d ${yunzai33}/plugins/example ] || echo "请先安装Yunzai-BotV3"
[ -d ${yunzai33}/plugins/example ] || break
echo "正在更新Yunzai..."
cd ${yunzai33}
git pull
echo "yunzai更新命令执行完成！"
cd /home/lighthouse
[ -d ${yunzai33}/plugins/miao-plugin ] || echo "请先安装miao-pluginV3"
[ -d ${yunzai33}/plugins/miao-plugin ] || break
echo "正在更新miao..."
cd ${yunzai33}/plugins/miao-plugin
git pull
echo "miao更新命令执行完成！"
cd /home/lighthouse
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
[ -d ${yunzai33}/plugins ] || echo "请先安装Yunzai-BotV3"
[ -d ${yunzai33}/plugins ] || break
rm -rf ${yunzai33}
[ -e ${yunzai33} ] || echo "卸载Yunzai-BotV3成功！"
[ -e ${yunzai33} ] || break
cd /home/lighthouse
echo "卸载Yunzai-BotV3失败！"
else
echo "您已取消卸载！"
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
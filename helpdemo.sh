#!/bin/bash
clear
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
PS3="请选择: "
while true; 
do
echo "__________________________________________________"
echo "欢迎使用《Yunzai-BotV3&V2&Centos》安装帮助"
echo "作者：柠檬冲水（bilibili同名主播）"
echo "提示：先安装基础三件，再进入版本模式"
echo "__________________________________________________"
fruits=(
 '设置语言' 
 '一键安装Node.js&Redis&Git' 
 '安装Node.js' 
 '安装Redis'
 '安装Git' 
 'SSH管理' 
 '更新脚本' 
 '单独启动停止'
 '启动机器人' 
 '停止机器人' 
 '进入Yunzai-BotV2模式'  
 '进入Yunzai-BotV3模式' 
 '重启服务器'
 '退出'
)
select version in ${fruits[@]}
do
case $version in
'设置语言')
clear
#选择循环开始
while true; 
do
echo "__________________________________________________"
echo "欢迎使用《Yunzai-BotV3&V2&Centos》安装帮助"
echo "作者：柠檬冲水（bilibili同名主播）"
echo "提示：先安装基础三件，再进入版本模式"
echo "__________________________________________________"
select version in '下载语言包' '查看所有语言' '查看当前语言' '编辑语言' '重启服务器' '退出' ;
do
case $version in
'下载语言包')
clear
dnf install langpacks-zh_CN
nf install -y ibus-libpinyin.x86_64
echo "——————————————————————————————"
echo "请查所有语言，找到zh_CN.utf8类似字眼则说明支持中文包"
echo "记住自己的中文包名字，选择编辑时，把当前语言改为中文即可"
echo "——————————————————————————————"
echo "《文件编辑教程》"
echo "按i进入修改模式"
echo "按ESE退出修改模式"
echo "输入:wq!并回车强制保存"
echo "按CTRL+Z退出文件"
break
;;
'查看所有语言')
clear
locale -a
break
;;
'查看当前语言')
clear
echo $LANG
break
;;
'编辑语言')
vi /etc/locale.conf
break
;;
'重启服务器')
history -c
shutdown -r now
exit
;;
'退出')
exit
;;
*)
clear
echo "#您的选择不存在，请重新选择！"
break
esac
done
done
;;
'一键安装Node.js&Redis&Git')
clear
cd /home/lighthouse
node -v
if [ $? = 0 ]
then
echo "已安装node.js"
else
echo "正在安装node.js，请耐心等待..."
yum install -y dnf
dnf module install nodejs:16 -y
echo "nodejs安装成功！"
fi
redis-server -v
if [ $? = 0 ]
then
echo "已安装redis"
redis-server --daemonize yes
echo "redis启动！"
else
echo "正在安装redis，请耐心等待..."
yum -y install git
yum -y install redis
echo "redis安装成功！"
redis-server --daemonize yes
echo "redis启动！"
systemctl enable redis.service
echo "设置开机自启！"
fi
git version
if [ $? = 0 ]
then
echo "Git已安装"
else
echo "正在安装Git，请耐心等待..."
yum -y install git
echo "Git安装成功！"
fi
break
;;
'安装Node.js')
clear
cd /home/lighthouse
node -v
if [ $? = 0 ] ; then
echo "已安装node.js"
else
echo "正在安装node.js，请耐心等待..."
yum install -y dnf
dnf module install nodejs:16 -y
echo "nodejs安装成功！"
fi
break
;;
'安装Redis')
clear
cd /home/lighthouse
redis-server -v
if [ $? = 0 ] ; then
echo "已安装redis"
redis-server --daemonize yes
echo "redis启动！"
else
echo "正在安装redis，请耐心等待..."
yum -y install git
yum -y install redis
echo "redis安装成功！"
redis-server --daemonize yes
echo "redis启动！"
systemctl enable redis.service
echo "设置开机自启！"
fi
break
;;
'安装Git')
clear
cd /home/lighthouse
git version
if [ $? = 0 ] ; then
echo "Git已安装"
else
echo "正在安装Git，请耐心等待..."
yum -y install git
echo "Git安装成功！"
fi
break
;;
'SSH管理')
clear
while true;
do
echo "__________________________________________________"
echo "欢迎使用《Centos&SSH》帮助"
echo "作者：柠檬冲水（bilibili同名主播）"
echo "公告：更多内容，请关注bilibili！"
echo "__________________________________________________"
select version in 'SSH初始化' '编辑SSH' 'SSH状态' '退出';
do
case $version in
'SSH初始化')
clear
yum -y remove openssh-server
yum -y install openssh-server
echo "——————————————————————————————"
echo "请编辑SSH"
echo "寻找并更改以下参数"
echo "——————————————————————————————"
echo "改#port 22为"
echo "port 22"
echo "——————————————————————————————"
echo "改#PubkeyAuthentication yes/no为"
echo "PubkeyAuthentication yes"
echo "——————————————————————————————"
echo "改#PasswordAuthentication yes/no为"
echo "PasswordAuthentication yes"
echo "——————————————————————————————"
echo "《文件编辑教程》"
echo "按i进入修改模式"
echo "按ESE退出修改模式"
echo "输入:wq!并回车强制保存"
echo "按CTRL+Z退出文件"
break
;;
'编辑SSH')
clear
vi /etc/ssh/sshd_config
break
;;
'SSH状态')
clear
systemctl restart sshd.service
systemctl status sshd.service
break
;;
'退出')
exit
;;
*)
clear
echo "#您的选择不存在，请重新选择！"
break
esac
done
done
;;
'更新Yunzai-Bot-Help')
clear
[ -d /Yunzai-Bot-Help ] || echo "未有指定目录Yunzai-Bot-Help"
[ -d /Yunzai-Bot-Help ] || echo "正在重新拉入脚本"
[ -d /Yunzai-Bot-Help ] || cd /
[ -d /Yunzai-Bot-Help ] || git clone https://github.com/ningmengchongshui/Yunzai-Bot-Help.git
[ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || echo "脚本不存存在"
[ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || echo "请退出，重新执行！"
[ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || break
[ ！ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || echo "脚本存在！"
[ ！ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || echo "尝试更新中......"
[ ！ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || cd /Yunzai-Bot-Help
[ ！ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || git pull
[ ！ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || echo "更新命令执行完成！"
[ ！ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || cd /home/lighthouse
[ ！ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || echo "请使用下列两条命令来确保能正确执行最新脚本脚本"
[ ！ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || echo "cd /"
[ ！ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || echo "./Yunzai-Bot-Help/helpdemo.sh.x"
[ ！ -e /Yunzai-Bot-Help/helpdemo.sh.x ] || break
cd /home/lighthouse
echo "脚本出错，请手动拉取！"
break
;;
'单独启动停止')
clear
x='0'
echo "输入12停止V2"
echo "输入13停止V3"
read -p "后台启动版本[2/3]:" x
if [ $x = 2 ] 
then
echo "您的选择是启动V2版本"
[ -d /home/lighthouse/YunzaiV2/yunzai-bot/plugins ] || echo "未安装V2！"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config.js ] || echo "您未配置机器人V2QQ"
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config.js ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config.js ] || npm stop
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config.js ] || npm start
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config.js ] || echo "V2后台运行"
break
fi
if [ $x = 3 ]
then
echo "您的选择是启动V3版本"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "您未配置机器人V3QQ"
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || npm stop
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || npm start
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "V3后台运行"
break
fi
if [ $x = 12 ]
then
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || npm stop
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] ||  echo "V2关闭"
break
fi
if [ $x = 13 ]
then
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || npm stop
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] ||  echo "V3关闭"
break
fi
echo "请输入正确值！"
break
;;
'启动机器人')
clear
[ -d /home/lighthouse/YunzaiV2/yunzai-bot/plugins ] || echo "未安装V2！"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config.js ] || echo "您未配置机器人V2QQ"
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config.js ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config.js ] || npm stop
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config.js ] || npm start
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config.js ] || echo "V2后台运行"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "您未配置机器人V3QQ"
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || npm stop
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || npm start
[ ! -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "V3后台运行"
break
;;
'停止机器人')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "未安装V2！"
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV2/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || npm stop
[ ! -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] ||  echo "V2关闭"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "未安装V3！"
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || cd /home/lighthouse/YunzaiV3/Yunzai-Bot
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || npm stop
[ ! -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] ||  echo "V3关闭"
break
;;
'进入Yunzai-BotV2模式')
clear
#V2登录循环开始
while true; 
do
echo "__________________________________________________"
echo "欢迎使用《Yunzai-BotV3&V2&Centos》安装帮助"
echo "作者：柠檬冲水（bilibili同名主播）"
echo "公告：更多内容，请关注bilibili！"
echo "提示：严格按数字顺序安装！"
echo "__________________________________________________"
select version in '安装Yunzai-BotV2' 'V2加载依赖' '安装ChromiumV2'  '安装miao-pluginV2' '更新Yunzai-BotV2&miao-plugin' 'V2初始化启动' '修改V2配置' '删除帮助底图' '删除V2配置' '卸载Yunzai-BotV2'  '退出';
do
case $version in
'安装Yunzai-BotV2')
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
'V2加载依赖')
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
'安装ChromiumV2')
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
'安装miao-pluginV2')
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
'更新Yunzai-BotV2&miao-plugin')
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
'V2初始化启动')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
cd /home/lighthouse/YunzaiV2/Yunzai-Bot
echo "初始化完成后,按CTRL+Z退出"
echo "重新执行脚本,以后台启动Yunzai-Bot"
echo "《配置修改教程》"
echo "按i进入修改模式"
echo "按ESE退出修改模式"
echo "输入:wq!并回车强制保存"
echo "按CTRL+Z退出文件"
node app.js
break
;;
'修改V2配置')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || echo "您未配置机器人V2QQ"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || break
vi /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js
break
;;
'删除帮助底图')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
echo "帮助分为上图跟地图,删除后，将只显示上图"
echo "您可以用过修改上图来达到帮助背景图全图显示的效果"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/miao-plugin/resources/common/theme/bg-01.jpg ] || rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins/miao-plugin/resources/common/theme/bg-01.jpg
echo "底图已删除"
break
;;
'删除V2配置')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || echo "您未配置机器人V2QQ"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || break
rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || echo "配置删除成功！"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot/config/config.js ] || break
echo "配置删除失败！"
break
;;
'卸载Yunzai-BotV2')
clear
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV2/Yunzai-Bot/plugins ] || break
rm -rf /home/lighthouse/YunzaiV2/Yunzai-Bot
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot ] || echo "卸载Yunzai-BotV2成功！"
[ -e /home/lighthouse/YunzaiV2/Yunzai-Bot ] || break
echo "卸载Yunzai-BotV2失败！"
break
;;
'退出')
exit
;;
*)
clear
cd /home/lighthouse/
echo "#您的选择不存在，请重新选择！"
break
esac
done
done
;;
'进入Yunzai-BotV3模式')
clear
#登录循环开始
while true; 
do
echo "__________________________________________________"
echo "欢迎使用《Yunzai-BotV3&V2&Centos》安装帮助"
echo "作者：柠檬冲水（bilibili同名主播）"
echo "公告：更多内容，请关注bilibili！"
echo "提示：严格按数字顺序安装！"
echo "__________________________________________________"
select version in '安装Yunzai-BotV3' 'V3加载依赖' '安装ChromiumV3'  '安装miao-pluginV3' '更新Yunzai-BotV3&miao-plugin' 'V3初始化启动' '修改group配置' '修改other配置' '删除帮助底图' '删除V3QQ配置' '卸载Yunzai-BotV3'  '退出';
do
case $version in
'安装Yunzai-BotV3')
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
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || git clone https://gitee.com/Le-niao/Yunzai-Bot.git
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || echo "Yunzai安装失败！" 
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot 
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || echo "Yunzai残留已清除！" 
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || break
echo "Yunzai-BotV3安装成功！"
cd /home/lighthouse/
break
;;
'V3加载依赖')
clear
echo "正在加载，请耐心等待..."
echo "若是卡住太久，可按CTRL+Z退出"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot ] || echo "请先安装Yunzai-BotV3"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot ] || break
cd /home/lighthouse/YunzaiV3/Yunzai-Bot
npm install
echo "加载成功！"
cd /home/lighthouse/
break
;;
'安装ChromiumV3')
clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || echo "请先安装Yunzai-BotV3" 
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || break
cd /home/lighthouse/YunzaiV3/Yunzai-Bot
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
'安装miao-pluginV3')
clear
echo "正在安装miao-plugin，请耐心等待..."
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || echo "请先安装Yunzai-BotV3" 
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || break
cd /home/lighthouse/YunzaiV3/Yunzai-Bot
npm install image-size
git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/miao-plugin/resources ] || echo "miao-pluginV3安装失败！" 
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/miao-plugin/resources ] || rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/miao-plugin
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/miao-plugin/resources ] || break
echo "miao-plugin安装成功！"
cd /home/lighthouse/
break
;;
'更新Yunzai-BotV3&miao-plugin')
clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || echo "请先安装Yunzai-BotV3"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || break
echo "正在更新Yunzai..."
cd /home/lighthouse/YunzaiV3/Yunzai-Bot
git pull
echo "yunzai更新命令执行完成！"
cd /home/lighthouse
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/miao-plugin ] || echo "请先安装miao-pluginV3"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/miao-plugin ] || break
echo "正在更新miao..."
cd /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/miao-plugin
git pull
echo "miao更新命令执行完成！"
cd /home/lighthouse
break
;;
'V3初始化启动')
clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV2"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
cd /home/lighthouse/YunzaiV3/Yunzai-Bot
echo "初始化完成后,按CTRL+Z退出"
echo "重新执行脚本,以后台启动Yunzai-Bot"
node app.js
break
;;
'删除帮助底图')
clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV3"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
echo "帮助分为上图跟地图,删除后，将只显示上图"
echo "您可以用过修改上图来达到帮助背景图全图显示的效果"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/miao-plugin/resources/common/theme/bg-01.jpg ] || rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/miao-plugin/resources/common/theme/bg-01.jpg
echo "底图已删除"
break
;;
'修改group配置')
clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || echo "请先安装Yunzai-BotV3"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || break
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "您未配置机器人V3QQ"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || break
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/group.yaml ] || echo "您未配置机器人"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/group.yaml ] || break
vi /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/group.yaml
echo "修改成功！"
break
;;
'修改other配置')
clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || echo "请先安装Yunzai-BotV3"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || break
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "您未配置机器人V3QQ"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || break
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/other.yaml ] || echo "您未配置机器人"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/other.yaml ] || break
vi /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/other.yaml
echo "修改成功！"
break
;;
'删除V3QQ配置')
clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || echo "请先安装Yunzai-BotV3"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example ] || break
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "您未配置机器人V3QQ"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || break
rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || echo "配置删除成功！"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot/config/config/qq.yaml ] || break
echo "配置删除失败！"
break
;;
'卸载Yunzai-BotV3')
clear
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || echo "请先安装Yunzai-BotV3"
[ -d /home/lighthouse/YunzaiV3/Yunzai-Bot/plugins ] || break
rm -rf /home/lighthouse/YunzaiV3/Yunzai-Bot
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot ] || echo "卸载Yunzai-BotV3成功！"
[ -e /home/lighthouse/YunzaiV3/Yunzai-Bot ] || break
echo "卸载Yunzai-BotV3失败！"
break
;;
'退出')
exit
;;
*)
clear
cd /home/lighthouse/
echo "#您的选择不存在，请重新选择！"
break
esac
done
done
;;
'重启服务器')
shutdown -r now
exit
;;
'退出')
exit
;;
*)
clear
echo "#您的选择不存在，请重新选择！"
break
;;
esac
done;
done;
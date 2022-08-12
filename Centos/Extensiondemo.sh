#!/bin/bash
myadress="/home/lighthouse"
readonly myadress
[ -d /home ] || echo "警告：不是Centos系统！退出执行！"
[ -d /home ] || exit
cd /home
[ -d ${myadress} ] || mkdir  lighthouse
[ -d ${myadress} ] || echo "初始化lighthouse目录失败！退出执行！"
cd ${myadress}
[ -d ${myadress}"/YunzaiV2" ] || mkdir  YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir  YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "初始化Yunzai目录失败！退出执行！" 
[ -d ${myadress}"/YunzaiV3" ] || exit
cd ${myadress}
Yunzai22="${myadress}/YunzaiV2/Yunzai-Bot"
readonly Yunzai22
Yunzai22="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai22
PS3="请选择: "
while true;
do
echo "__________________________________________________"
echo "欢迎使用《Yunzai-Bot-Extension》安装"
echo "作者：bilibili柠檬冲水UP"
echo "2022年8月12日V1.1.1"
echo "__________________________________________________"
fruits5=(
'禁止涩涩'
'抽卡设置'
'选择更新'
'回滚更新' 
'替换V2Help' 
'替换V3Help' 
'派梦语音' 
'zip' 
'返回'
)
select version5 in ${fruits5[@]}
do
case $version5 in
'禁止涩涩')
clear
echo "放入V2涩涩：2"
echo "卸载V2涩涩：20"
echo "任意输入返回"
read -p "请选择：" y
if [ $Y = 2 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/fen-plugin" ] || echo "已安装禁涩！"
[ ! -d ${Yunzai22}"/plugins/fen-plugin" ] || break
cd ${Yunzai22}
git clone https://gitee.com/litefen/fen-plugin.git   ./plugins/fen-plugin/
echo "命令已执行！"
cd ${myadress}
fi
if [ $Y = 20 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai22}"/plugins" ] || break
[ -d ${Yunzai22}"/plugins/fen-plugin" ] || echo "未安装禁涩！"
[ -d ${Yunzai22}"/plugins/fen-plugin" ] || break
[ ! -d ${Yunzai22}"/plugins/fen-plugin" ] || cd ${Yunzai22}
[ ! -d ${Yunzai22}"/plugins/fen-plugin" ] || rm -rf ${Yunzai22}"/plugins/fen-plugin"
echo "命令已执行！"
cd ${myadress}
fi
echo "您已返回"
break
;;

'抽卡设置')
clear
echo "提示：V2必须加载依赖"
echo "依赖加载：0"
echo "放入V2抽卡：2"
echo "放入V3抽卡：3"
echo "卸载V2抽卡：20"
echo "卸载V3抽卡：30"
echo "任意输入返回"

read -p "请选择：" y

if [ $y = 0 ]
then
npm i yaml
cd ${myadress}
fi

if [ $y = 2 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "已安装抽卡！"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || break
cd ${Yunzai22}
git clone https://gitee.com/Nwflower/Gacha-plugin.git   ./plugins/gacha-plugin/
echo "命令已执行！"
cd ${myadress}
fi

if [ $y = 3 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "已安装抽卡！"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || break
cd ${Yunzai22}
git clone https://gitee.com/Nwflower/Gacha-plugin.git   ./plugins/gacha-plugin/
echo "命令已执行！"
cd ${myadress}
fi

if [ $y = 20 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "未安装抽卡"
[ -d ${Yunzai22}"/plugins/gacha-plugin" ] || break
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || cd ${Yunzai22}
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || rm -rf ${Yunzai22}"/plugins/gacha-plugin"
echo "命令已执行！"
cd ${myadress}
fi

if [ $y = 30 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai22}"/plugins" ] || break
[ -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "未安装抽卡"
[ -d ${Yunzai22}"/plugins/gacha-plugin" ] || break
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || cd ${Yunzai22}
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || rm -rf ${Yunzai22}"/plugins/gacha-plugin"
echo "命令已执行！"
cd ${myadress}
fi

echo "您已返回"
break
;;

'替换V2Help')
clear
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai22}"/plugins" ] || break
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/help" ] || echo "未安装miao"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/help" ] || break
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/common/theme" ] || echo "未安装miao"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/common/theme" ] || break
[ -d /Yunzai-Bot-Help/Allfile/help ] || echo "Yunzai-Bot-help出错"
[ -d /Yunzai-Bot-Help/Allfile/help ] || break
cd /Yunzai-Bot-Help/Allfile/help/V2help
cp help-list.js ${Yunzai22}"/plugins/miao-plugin/resources/help"
cp icon.png ${Yunzai22}"/plugins/miao-plugin/resources/help"
cp main-01.png ${Yunzai22}"/plugins/miao-plugin/resources/common/theme"
echo "已执行替换"
cd ${myadress}
break
;;

'替换V3Help')
clear
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai22}"/plugins" ] || break
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/help" ] || echo "未安装miao"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/help" ] || break
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/common/theme" ] || echo "未安装miao"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/common/theme" ] || break
[ -d "/Yunzai-Bot-Help/Allfile/help" ] || echo "Yunzai-Bot-help出错"
[ -d "/Yunzai-Bot-Help/Allfile/help" ] || break
cd /Yunzai-Bot-Help/Allfile/help/V3help
cp help-list.js ${Yunzai22}"/plugins/miao-plugin/resources/help"
cp icon.png ${Yunzai22}"/plugins/miao-plugin/resources/help"
cp main-01.png ${Yunzai22}"/plugins/miao-plugin/resources/common/theme"
echo "已执行替换"
cd ${myadress}
break
;;
'派梦语音')
clear
echo "正在配置语音..."
[ -d ${Yunzai22}"/resources" ] || echo "未安装V3！"
[ -d ${Yunzai22}"/resources" ] || break
cd ${Yunzai22}"/resources"
[ -d ${Yunzai22}"/resources/voice" ] || mkdir voice
[ -d ${Yunzai22}"/resources/voice" ] || echo "初始化失败"
[ -d ${Yunzai22}"/resources/voice" ] || break
cd ${Yunzai22}"/resources/voice"
[ -d ${Yunzai22}"/resources/voice/paimeng" ] || mkdir paimeng
[ -d ${Yunzai22}"/resources/voice/paimeng" ] || echo "初始化失败"
[ -d ${Yunzai22}"/resources/voice/paimeng" ] || break
[ -e /Yunzai-Bot-Help/Allfile/voice/paimeng/paimeng.zip ] || echo "Yunzai-Bot-help出错"
[ -e /Yunzai-Bot-Help/Allfile/voice/paimeng/paimeng.zip ] || break
cd /Yunzai-Bot-Help/Allfile/voice/paimeng
cd /Yunzai-Bot-Help/Allfile/voice
cp paimeng/* ${Yunzai22}"/resources/voice/paimeng"
[ -e ${Yunzai22}"/plugins/example/派蒙语音v3.js" ] || echo "未安装插件(派梦语音v3.js)"
[ -e ${Yunzai22}"/plugins/example/派蒙语音v3.js" ] || echo "错误语音的js会导致报错！"
echo "配置已执行"
cd ${myadress}
break
;;
'选择更新')
clear
echo "更新涩涩V2：12"
echo "更新抽卡V2：22"
echo "更新抽卡V3：23"
echo "任意值返回！"
read -p "请选择：" y
if [ $y = 12 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/fen-plugin" ] || echo "已安装禁涩！"
[ ! -d ${Yunzai22}"/plugins/fen-plugin" ] || cd ${Yunzai22}"/plugins/fen-plugin"
[ ! -d ${Yunzai22}"/plugins/fen-plugin" ] || git pull
[ ! -d ${Yunzai22}"/plugins/fen-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai22}"/plugins/fen-plugin" ] || break
cd ${myadress}
echo "未安装"
fi 
if [ $y = 22 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "已安装抽卡！"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || cd ${Yunzai22}"/plugins/gacha-plugin"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || git pull
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || break
cd ${myadress}
echo "未安装"
fi 
if [ $y = 23 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "已安装抽卡！"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || cd ${Yunzai22}"/plugins/gacha-plugin"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || git pull
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || break
cd ${myadress}
echo "未安装"
fi 
break
;;
'回滚更新')
clear
echo "回滚涩涩V2：12"
echo "回滚抽卡V2：22"
echo "回滚抽卡V3：23"
echo "任意值返回！"
read -p "请选择：" y
if [ $y = 13 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "已安装抽卡！"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || cd ${Yunzai22}"/plugins/gacha-plugin"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || git revert
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || break
cd ${myadress}
echo "未安装"
fi 
if [ $y = 22 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "已安装抽卡！"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || cd ${Yunzai22}"/plugins/gacha-plugin"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || git revert
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || break
cd ${myadress}
echo "未安装"
fi 
if [ $y = 23 ]
then
[ -d ${Yunzai22}"/plugins ] || echo "未安装V3！"
[ -d ${Yunzai22}"/plugins ] || break
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "已安装抽卡！"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || cd ${Yunzai22}"/plugins/gacha-plugin"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || git revert
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai22}"/plugins/gacha-plugin" ] || break
cd ${myadress}
echo "未安装"
fi 
break
;;
'zip')
clear
unzip paimeng.zip
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
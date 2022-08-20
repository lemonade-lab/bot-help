#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv

news=""

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV2" ] || mkdir YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || news="#初始化失败"
cd "${myadress}"
Yunzai22="${myadress}/YunzaiV2/Yunzai-Bot"
readonly Yunzai22
Yunzai33="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai33

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n$news" \
15 50 3 \
"1" "派梦语音" \
"2" "替换miaoHelp" \
"3" "插件列表" \
"4" "删除插件" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
    if [ $OPTION = 1 ]
    then
[ -d ${Yunzai33}"/resources" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/resources" ] || break
cd ${Yunzai33}"/resources"
[ -d ${Yunzai33}"/resources/voice" ] || mkdir voice
[ -d ${Yunzai33}"/resources/voice" ] || echo "初始化失败"
[ -d ${Yunzai33}"/resources/voice" ] || break
cd ${Yunzai33}"/resources/voice"
[ -d ${Yunzai33}"/resources/voice/paimeng" ] || mkdir paimeng
[ -d ${Yunzai33}"/resources/voice/paimeng" ] || echo "初始化失败"
[ -d ${Yunzai33}"/resources/voice/paimeng" ] || break
[ -e /Yunzai-Bot-Help/Allfile/voice/paimeng/paimeng.zip ] || echo "Yunzai-Bot-help出错"
[ -e /Yunzai-Bot-Help/Allfile/voice/paimeng/paimeng.zip ] || break
cd /Yunzai-Bot-Help/Allfile/voice/paimeng
cp paimeng.zip ""${Yunzai33}"/resources/voice/paimeng"
cd ${Yunzai33}"/resources/voice/paimeng"
unzip paimeng.zip
[ -e ${Yunzai33}"/plugins/example/派蒙语音v3.js" ] || echo "未安装插件-派梦语音v3.js"
[ -e ${Yunzai33}"/plugins/example/派蒙语音v3.js" ] || echo "错误语音的js会导致报错！"
echo "配置已执行"
read -p "回车并继续..." y
    fi
    if [ $OPTION = 2 ]
    then
echo "V2:2"
echo "V3:3"
read -p "请选择版本：" z
if [ $z = 2 ]
then
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
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
fi
if [ $z = 3 ]
then
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/help" ] || echo "未安装miao"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/help" ] || break
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/common/theme" ] || echo "未安装miao"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/common/theme" ] || break
[ -d "/Yunzai-Bot-Help/Allfile/help" ] || echo "Yunzai-Bot-help出错"
[ -d "/Yunzai-Bot-Help/Allfile/help" ] || break
cd /Yunzai-Bot-Help/Allfile/help/V3help
cp help-list.js ${Yunzai33}"/plugins/miao-plugin/resources/help"
cp icon.png ${Yunzai33}"/plugins/miao-plugin/resources/help"
cp main-01.png ${Yunzai33}"/plugins/miao-plugin/resources/common/theme"
echo "已执行替换"
fi
read -p "回车并继续..." y
    fi
    if [ $OPTION = 3 ]
    then
read -p "回车并继续..." y
    fi
    if [ $OPTION = 4 ]
    then
read -p "回车并继续..." y
    fi
else
    exit
fi
done

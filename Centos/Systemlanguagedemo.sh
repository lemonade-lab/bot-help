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


while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n$news" \
15 50 3 \
"1" "下载语言包" \
"2" "语言列表" \
"3" "当前语言" \
"4" "编辑教程" \
"5" "编辑语言" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
    if [ $OPTION = 1 ]
    then
cd "${myadress}"
dnf install langpacks-zh_CN
nf install -y ibus-libpinyin.x86_64
news="#已执行！"
    fi
    if [ $OPTION = 2 ]
    then
locale -a
read -p "回车并继续..."
    fi
    if [ $OPTION = 3 ]
    then
echo $LANG
read -p "回车并继续..."
    fi
    if [ $OPTION = 4 ]
    then
echo "__________________________________________________"
echo "请查所有语言，找到zh_CN.utf8类似字眼则说明支持中文包"
echo "记住自己的中文包名字，选择编辑时，改为中文即可"
echo "__________________________________________________"
echo "《文件编辑教程》"
echo "按i进入修改模式"
echo "按ESE退出修改模式"
echo "输入:wq!强制保存"
echo "按CTRL+Z退出文件"
read -p "回车并继续..."
    fi
    if [ $OPTION = 5 ]
    then
vi /etc/locale.conf
cd "${myadress}"
    fi
else
    exit
fi
done

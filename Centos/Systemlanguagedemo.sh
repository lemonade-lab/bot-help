#!/bin/bash

yourv=$(cat /etc/redhat-release)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "#初始化失败"
[ -d ${myadress}"/YunzaiV3" ] || read -p "回车并继续..." x
[ -d ${myadress}"/YunzaiV3" ] || exit
cd "${myadress}"

while true
do
OPTION=$(whiptail \
--title "《System-language》" \
--menu "$yourv" \
15 50 5 \
"1" "编辑教程" \
"2" "下载语言包" \
"3" "语言列表" \
"4" "当前语言" \
"5" "编辑语言" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
    if [ $OPTION = 1 ]
    then
echo "__________________________________________________"
echo "先下载语言包后查看语音"
echo "找到zh_CN.utf8类似字眼则说明支持中文包"
echo "复制包名，编辑时，改为中文即可"
echo "__________________________________________________"
echo "《文件编辑教程》"
echo "按i进入修改模式"
echo "按ESE退出修改模式"
echo "输入:wq!强制保存"
echo "按CTRL+Z退出文件"
read -p "回车并继续..." x
    fi
    if [ $OPTION = 2 ]
    then
cd "${myadress}"
dnf install langpacks-zh_CN
dnf install -y ibus-libpinyin.x86_64
echo "#已执行！"
read -p "回车并继续..." x
    fi 
    if [ $OPTION = 3 ]
    then
locale -a
read -p "回车并继续..." x
    fi
    if [ $OPTION = 4 ]
    then
echo $LANG
read -p "回车并继续..." x
    fi
    if [ $OPTION = 5 ]
    then
vi /etc/locale.conf
    fi
else
    exit
fi
done

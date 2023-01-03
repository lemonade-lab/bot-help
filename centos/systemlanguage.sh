#!/bin/bash

version=$(cat /etc/redhat-release)
readonly version

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/centos" ] || mkdir centos
[ -d ${myadress}"/centos" ] || exit

while true
do
OPTION=$(whiptail \
--title "《System-language》" \
--menu "$version" \
15 50 5 \
"1" "编辑教程instruction" \
"2" "下载语言downloadlanguage" \
"3" "语言列表languagelist" \
"4" "编辑语言editlanguage" \
"5" "当前语言currentlanguage" \
3>&1 1>&2 2>&3)

feedback=$?
if [ $feedback = 0 ]
then

    if [ $OPTION = 1 ]
    then
    echo "__________________________________________________"
    echo "第一步：下载语言"
    echo "第二步：语言列表"
    echo "找到zh_CN.utf8类似字眼并复制"
    echo "第三步：编辑语言"
    echo "__________________________________________________"
    echo "按i进入插入模式"
    echo "按ESE进入命令模式"
    echo "输入:wq!保存"
    echo "输入:q!退出"
    read -p "Enter回车并继续..." x
    fi

    if [ $OPTION = 2 ]
    then
    cd "${myadress}"
    dnf install langpacks-zh_CN
    dnf install -y ibus-libpinyin.x86_64
    read -p "已执行Enter回车并继续..." x
    fi 

    if [ $OPTION = 3 ]
    then locale -a
    read -p "Enter回车并继续..." x
    fi


    if [ $OPTION = 4 ]
    then vi /etc/locale.conf
    fi
    
    if [ $OPTION = 5 ]
    then echo $LANG
    read -p "Enter回车并继续..." x
    fi


else
    exit
fi
done

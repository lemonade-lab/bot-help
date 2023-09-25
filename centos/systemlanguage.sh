#!/bin/bash

source /bot-help/globals.sh

# 进入
cd "$DIRECTORY"


while true
do
OPTION=$(whiptail \
--title "《Language》" \
--menu "$version" \
15 50 5 \
"1" "下载语言downloadlanguage" \
"2" "语言列表languagelist" \
"3" "编辑语言editlanguage" \
"4" "当前语言currentlanguage" \
3>&1 1>&2 2>&3)

feedback=$?
if [ $feedback = 0 ]
then

    if [ $OPTION = 1 ]
    then
    cd "$DIRECTORY"
    sudo yum install dnf -y
    dnf install langpacks-zh_CN
    dnf install ibus-libpinyin.x86_64 -y
    read -p "已执行Enter回车并继续..." x
    fi 

    if [ $OPTION = 2 ]
    then locale -a
    read -p "Enter回车并继续..." x
    fi


    if [ $OPTION = 3 ]
    then vi /etc/locale.conf
    fi
    
    if [ $OPTION = 4 ]
    then echo $LANG
    read -p "Enter回车并继续..." x
    fi


else
    exit
fi
done

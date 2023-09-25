#!/bin/bash

source /bot-help/globals.sh

while true
do
OPTION=$(whiptail \
--title "《bot-help》" \
--menu "$version" \
15 50 5 \
"1" "安装" \
3>&1 1>&2 2>&3)
feedback=$?

if [ $feedback = 0 ]
then

#工具管理HelpManage
    if [ $OPTION = 1 ]
    then read -p "待施工" Enter
    fi

else
    exit
fi
done
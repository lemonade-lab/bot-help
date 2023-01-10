#!/bin/bash

version=$(cat /etc/issue)
readonly version

while true
do
OPTION=$(whiptail \
--title "《Firewall》" \
--menu "$version" \
15 50 3 \
"1" "状态" \
"2" "端口" \
"3" "重启" \
3>&1 1>&2 2>&3)

feedback=$?
if [ $feedback = 0 ]
then
    if [ $OPTION = 1 ]
    then echo "待实现"
    fi
    if [ $OPTION = 2 ]
    then echo "待实现"
    fi
    if [ $OPTION = 3 ]
    then echo "待实现"
    fi
else
    exit
fi
done

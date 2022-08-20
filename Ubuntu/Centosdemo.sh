#!/bin/bash
yourv=$(cat /etc/issue)
readonly yourv
Ubuntu="/Yunzai-Bot-Help/Ubuntu"
readonly Ubuntu
while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n##上下选择##左右确定取消" \
15 50 3 \
"1" "HELP设置" \
"2" "V2管理" \
"3" "V3管理"  \
"4" "运行管理" \
"5" "进程管理" \
"6" "插件管理" \
"7" "扩展功能" \
"8" "环境管理" \
"9" "系统语言" \
"10" "SSH管理" \
"11" "防火墙" \
"12" "系统重启" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
    if [ $OPTION = 1 ]
    then
    cd "${Ubuntu}"
    ./Update.sh
    fi
    if [ $OPTION = 2 ]
    then
    cd "${Ubuntu}"
    ./V2demo.sh
    fi
    if [ $OPTION = 3 ]
    then
    cd "${Ubuntu}"
    ./V3demo.sh
    fi
    if [ $OPTION = 4 ]
    then
    cd "${Ubuntu}"
    ./Robotdemo.sh
    fi
    if [ $OPTION = 5 ]
    then
    cd "${Ubuntu}"
    ./Pm2demo.sh
    fi
    if [ $OPTION = 6 ]
    then
    cd "${Ubuntu}"
    ./Pluginsdeno.sh
    fi
    if [ $OPTION = 7 ]
    then
    cd "${Ubuntu}"
    ./Extensiondemo.sh
    fi
    if [ $OPTION = 8 ]
    then
    cd "${Ubuntu}"
    ./Environmentdemo.sh
    fi
    if [ $OPTION = 9 ]
    then
    cd "${Ubuntu}"
    ./Systemlanguagedemo.sh
    fi
    if [ $OPTION = 10 ]
    then
    cd "${Ubuntu}"
    ./SSHdemo.sh
    fi
    if [ $OPTION = 11 ]
    then
    cd "${Ubuntu}"
    ./Firewalldemo.sh
    fi
    
    if [ $OPTION = 12 ]
    then
    Choise=$(whiptail \
    --title "《Yunzai-Bot-Help》" \
    --menu "$yourv\n##上下选择##左右确定取消" \
    15 50 5 \
    "1" "重启" \
    3>&1 1>&2 2>&3)
    y=$?
    if [ $y = 0 ]
    then
    shutdown -r now
    fi
    fi
else
    echo "退出成功！"
    exit
fi
done

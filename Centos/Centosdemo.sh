#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv
Centos="/Yunzai-Bot-Help/Centos"
readonly Centos
while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-Help》" \
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
    cd "${Centos}"
    ./Update.sh
    fi
    if [ $OPTION = 2 ]
    then
    cd "${Centos}"
    ./V2demo.sh
    fi
    if [ $OPTION = 3 ]
    then
    cd "${Centos}"
    ./V3demo.sh
    fi
    if [ $OPTION = 4 ]
    then
    cd "${Centos}"
    ./Robotdemo.sh
    fi
    if [ $OPTION = 5 ]
    then
    cd "${Centos}"
    ./Pm2demo.sh
    fi
    if [ $OPTION = 6 ]
    then
    cd "${Centos}"
    ./Pluginsdeno.sh
    fi
    if [ $OPTION = 7 ]
    then
    cd "${Centos}"
    ./Extensiondemo.sh
    fi
    if [ $OPTION = 8 ]
    then
    cd "${Centos}"
    ./Environmentdemo.sh
    fi
    if [ $OPTION = 9 ]
    then
    cd "${Centos}"
    ./Systemlanguagedemo.sh
    fi
    if [ $OPTION = 10 ]
    then
    cd "${Centos}"
    ./SSHdemo.sh
    fi
    if [ $OPTION = 11 ]
    then
    cd "${Centos}"
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

#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv
Centos="/Yunzai-Bot-Help/Centos"
readonly Centos
while true
do
OPTION=$(whiptail --title "Yunzai-Bot-Help" --menu "##上下选择左右确定取消##\n$yourv" 15 50 5 \
"1" "使用帮助" \
"2" "V2管理" \
"3" "V3管理"  \
"4" "运行管理" \
"5" "进程管理" \
"6" "扩展功能" \
"7" "扩展功能" \
"8" "环境管理" \
"9" "系统语言" \
"10" "SSH管理" \
"11" "HELP设置" \
"12" "Bot多开" \
"13" "防火墙" \
"14" "系统重启" 3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
    if [ $OPTION = 1 ]
    then
    cd "${Centos}"
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
    ./Update.sh
    fi
    if [ $OPTION = 12 ]
    then
    echo "测试中..."
    fi
    if [ $OPTION = 13 ]
    then
    cd "${Centos}"
    ./Firewalldemo.sh
    fi
    if [ $OPTION = 14 ]
    then
    read -p "任意值返回，输入0确定：" x
    if [ $x = 0 ]
    then
    shutdown -r now
    fi
    fi
else
    echo "退出成功！"
    exit
fi

done

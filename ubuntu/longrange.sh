#!/bin/bash
version=$(cat /etc/issue)
readonly version

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/Bot" ] || mkdir Bot
[ -d ${myadress}"/Bot" ] || exit

while true
do
OPTION=$(whiptail \
--title "《Help-SSH》" \
--menu "$version" \
15 50 5 \
"1" "说明书editInstruction" \
"2" "初始化initializeSSH" \
"3" "编辑editSSH " \
"4" "重启restartSSH " \
"5" "状态statusSSH" \
3>&1 1>&2 2>&3)
feedback=$?

if [ $feedback = 0 ]
then

    if [ $OPTION = 1 ]
    then
    echo "第一步：初始化"
    echo "第二步：编辑"
    echo "——————————————————————————————"
    echo "按i进入修改模式"
    echo "——————————————————————————————"
    echo "#port 22改为port 22"
    echo "——————————————————————————————"
    echo "#PubkeyAuthentication yes改为"
    echo "PubkeyAuthentication yes"
    echo "——————————————————————————————"
    echo "按ESE进入命令模式"
    echo "输入:wq!保存"
    echo "输入:q!退出"
    echo "第三步：重启"
    echo "——————————————————————————————"
    read -p "Enter回车并继续..." Enter
    fi
    
    if [ $OPTION = 2 ]
    then 
    cd "${myadress}"
    apt remove -y openssh-server
    apt install -y openssh-server
    read -p "已执行Enter回车并继续..." Enter
    fi

    if [ $OPTION = 3 ]
    then vi /etc/ssh/sshd_config
    fi
    
    if [ $OPTION = 4 ]
    then systemctl restart sshd.service
    read -p "Enter回车并继续..." Enter
    fi
    
    if [ $OPTION = 5 ]
    then systemctl status sshd.service
    read -p "Enter回车并继续..." Enter
    fi
    
    cd "${myadress}"
else
    exit
fi
done

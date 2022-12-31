#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || news="initialization failed初始化失败"
[ -d ${myadress}"/YunzaiV3" ] || read -p "Enter and continue回车并继续..."
[ -d ${myadress}"/YunzaiV3" ] || exit

cd "${myadress}"

while true
do
OPTION=$(whiptail \
--title "《Help-SSH》" \
--menu "$yourv" \
15 50 5 \
"1" "initialize SSH SSH初始化" \
"2" "edit instruction 编辑说明" \
"3" "edit SSH 编辑SSH" \
"4" "restart SSH 重启SSH" \
"5" "status SSH状态" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
    if [ $OPTION = 1 ]
    then
cd "${myadress}"
yum -y remove openssh-server
yum -y install openssh-server
echo "#已执行！"
read -p "Enter and continue回车并继续..." x
    fi
    if [ $OPTION = 2 ]
    then
echo "《文件编辑教程》"
echo "按i进入修改模式"
echo "按ESE退出修改模式"
echo "输入:wq!并回车强制保存"
echo "按CTRL+Z退出文件"
echo "——————————————————————————————"
echo "请先初始化"
echo "而后编辑SSH"
echo "寻找并更改以下参数"
echo "——————————————————————————————"
echo "改#port 22为" 
echo "port 22"
echo "——————————————————————————————"
echo "改#PubkeyAuthentication yes为"
echo "PubkeyAuthentication yes"
echo "——————————————————————————————"
echo "修改后重启生效..."
echo "——————————————————————————————"
read -p "Enter and continue回车并继续..." x
    fi
    if [ $OPTION = 3 ]
    then
vi /etc/ssh/sshd_config
    fi
    if [ $OPTION = 4 ]
    then
systemctl restart sshd.service
read -p "Enter and continue回车并继续..." x
    fi
    if [ $OPTION = 5 ]
    then
systemctl status sshd.service
read -p "Enter and continue回车并继续..." x
    fi
cd "${myadress}"
else
    exit
fi
done

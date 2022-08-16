#!/bin/bash
myadress="/home/lighthouse"
readonly myadress
[ -d /home ] || echo "警告：不是Centos系统！退出执行！"
[ -d /home ] || exit
cd /home
[ -d ${myadress} ] || mkdir  lighthouse
[ -d ${myadress} ] || echo "初始化lighthouse目录失败！退出执行！"
cd ${myadress}""
[ -d ${myadress}"/YunzaiV2" ] || mkdir  YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir  YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "初始化Yunzai目录失败！退出执行！" 
[ -d ${myadress}"/YunzaiV3" ] || exit
cd ${myadress}""
PS3="请选择: "
while true; 
do
echo "_______________________________________"
echo "_____一键《防火墙管理》部署______________"
echo "_____作者：bilibili柠檬冲水UP___________"
echo "_____2022年8月16日V1.1.4________________"
echo "________________________________________"
fruits1=(
 '状态'
 '端口'
 '重启'
 '返回'
)
select version1 in ${fruits1[@]}
do
case $version1 in
'状态')
clear
firewall-cmd --state
break
;;
'端口')
clear
systemctl start firewalld.service
read -p "开启端口：" x
firewall-cmd --zone=public --add-port=$x/tcp --permanent
systemctl restart firewalld.service
firewall-cmd --reload
echo "命令已执行！"
break
;;
'重启')
clear
systemctl restart firewalld.service
break
;;
'返回')
clear
exit
;;
*)
clear
echo "#您的选择不存在，请重新选择！"
break
esac
done
done
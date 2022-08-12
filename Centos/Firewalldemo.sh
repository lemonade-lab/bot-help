#!/bin/bash
[ -d /home ] || echo "警告：不是Centos系统！退出执行！"
[ -d /home ] || exit
cd /home
[ -d /home/lighthouse ] || mkdir  lighthouse
[ -d /home/lighthouse ] || echo "初始化lighthouse目录失败！退出执行！"
cd /home/lighthouse
[ -d /home/lighthouse/YunzaiV2 ] || mkdir  YunzaiV2
[ -d /home/lighthouse/YunzaiV3 ] || mkdir  YunzaiV3
[ -d /home/lighthouse/YunzaiV3 ] || echo "初始化Yunzai目录失败！退出执行！" 
[ -d /home/lighthouse/YunzaiV3 ] || exit
PS3="请选择: "
while true; 
do
echo "__________________________________________________"
echo "  《防火墙管理》  "
echo "__________________________________________________"
fruits1=(
 '状态'
 '开端口'
 '重启'
 '返回'
)
select version1 in ${fruits1[@]}
do
case $version1 in
'防火墙状态')
clear
firewall-cmd --state
break
;;
'开端口')
clear
systemctl start firewalld.service
read -p "端口：" x
firewall-cmd --zone=public --add-port=$x/tcp --permanent
systemctl restart firewalld.service
firewall-cmd --reload
echo "命令已执行！"
break
;;
'重启防火墙')
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
#!/bin/bash
# this is a demo
[ -d C:/Users ] || echo "警告：不是window系统！退出执行！"
[ -d C:/Users ] || exit
yourip='123'
PS3="请选择: "
#选择循环开始
while true; 
do
echo "______________________________"
echo "欢迎使用《Centos》登录脚本"
echo "作者：柠檬冲水"
echo "服务器先SHH"
echo "后初始化SSH"
echo "______________________________"
select version in '初始化ssh' '登录服务器'  '退出';
do
case $version in
'初始化ssh')
clear
read -p "输入0返回，您的IP：" yourip
[ $yourip = 0 ]&& break
ssh-keygen -R $yourip
echo "命令已执行！"
break
;;
'登录服务器')
#登录循环开始
while true; 
do
read -p "输入0返回，您的IP：" yourip
[ $yourip = 0 ]&& clear
[ $yourip = 0 ]&& echo "______________________________"
[ $yourip = 0 ]&& echo "欢迎使用《Centos》登录脚本"
[ $yourip = 0 ]&& echo "作者：柠檬冲水"
[ $yourip = 0 ]&& echo "服务器先SHH"
[ $yourip = 0 ]&& echo "后初始化SSH"
[ $yourip = 0 ]&& echo "______________________________"
[ $yourip = 0 ]&& echo "1）初始化SSH"
[ $yourip = 0 ]&& echo "2）登录服务器"
[ $yourip = 0 ]&& echo "3）退出"
[ $yourip = 0 ]&& break
ssh -p 22 root@$yourip
done
;;
'退出')
exit
;;
*)
clear
echo "#您的选择不存在，请重新选择！"
break
esac
done
done
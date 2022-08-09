#!/bin/bash
# this is a demo
[ -d C:/Users ] || echo "警告：不是window系统！退出执行！"
[ -d C:/Users ] || exit
yourid='123'
#循环开始
while true; 
do
clear
echo "__________________________________"
echo "|《文件上传工具》             "
echo "|作者：柠檬冲水"
echo "|使用方法："
echo "|请把文件跟脚本放进同一文件夹中"
echo "|上传需要先开SSH"
echo "|而后初始化SSH"
echo "|文件名：* 代表当前文件夹中所有文件"
echo "|注意区分中文字符和英文字符"
echo "__________________________________"
read -p "输入0退出，您的文件名:" yourfile
[ $yourfile = 0 ]&&exit
read -p "输入0退出，您的ip:" yourid
[ $yourid = 0 ]&&exit
echo "例子：/home/lighthouse/YunzaiV2/Yunzai-Bot/lib/example"
echo "例子：/home/lighthouse/YunzaiV3/Yunzai-Bot/plugins/example"
read -p "输入0退出，您的文件地址:" youraddress
[ $yourid = 0 ]&&exit
scp $yourfile root@$yourid:$youraddress
echo "命令已执行！"
done
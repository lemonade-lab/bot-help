#!/bin/bash
[ -d C:/Users ] || echo "警告：不是window系统！退出执行！"
[ -d C:/Users ] || exit
PS3="请选择: "
while true; 
do
echo "______________________________"
echo "欢迎使用《Yunzai-Bot-Help》助手"
echo "作者：bilibili柠檬冲水UP"
echo "版本：1.0.3"
echo "______________________________"
select version in '登录管理' '帮助管理' '插件管理' '文件管理' '退出';
do
case $version in
'登录管理')
clear
echo "1 )初始化SSH"
echo "2 )登录"
echo "3 )返回"
read -p "选择：" x
if [ $x = 1 ]
then
read -p "IP：" IP
ssh-keygen -R $IP
fi
if [ $x = 2 ]
then
read -p "IP：" IP
ssh root@$IP -p 22
fi
break
;;
'帮助管理')
clear
echo "1 )喵喵帮助"
echo "2 )更新图片"
echo "3 )更新样式"
read -p "选择：" x
if [ $x = 1 ]
then
echo "待添加"
fi
break
;;
'插件管理')
clear

echo "1 )上传所有"
echo "2 )单独上传"
read -p "选择：" x
if [ $x = 1 ]
then
echo "待添加"
fi
break
;;
'文件管理')
clear

echo "1 )上传"
read -p "选择：" x
if [ $x = 1 ]
then
echo "待添加"
fi
break
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
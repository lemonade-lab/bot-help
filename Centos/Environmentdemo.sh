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
echo "______《环境管理》______________________"
echo "______作者：bilibili柠檬冲水UP__________"
echo "______2022年8月13日V1.1.3_______________"
echo "________________________________________"
fruits2=(
'查看Nodejs' 
'查看Redis' 
'查看看Git' 
'控制Redis' 
'安装zip'
'安装sshpass'
'返回'
)
select version2 in ${fruits2[@]}
do
case $version2 in
'查看Nodejs')
clear
node -v
break
;;
'查看Redis')
clear
redis-server -v
break
;;
'查看看Git')
clear
git version
break
;;
'控制Redis')
clear
echo "Redis进程：21"
echo "杀死Redis：210"
echo "启动Redis：2"
echo "关闭Redis：20"
echo "卸载Redis：200"
x = '0'
read -p "请选择：" x
if [ $x = 21 ]
then
ps -aux | grep redis
fi
if [ $x = 210 ]
then
ps -aux | grep redis
y = '0'
read -p "进程：" y
redis kill -9 $y
fi
if [ $x = 2 ]
then
git version
fi
if [ $x = 20 ]
then
git version
echo "提示：未添加"
fi
if [ $x = 200 ]
then
git version
echo "提示：未添加"
fi
break
;;
'安装zip')
clear
yum install -y unzip zip
exit
;;
'安装sshpass')
clear
cd ${myadress}""
wget https://nchc.dl.sourceforge.net/project/sshpass/sshpass/1.06/sshpass-1.06.tar
tar  zxf sshpass-1.06.tar.gz
./configure  --prefix=/usr/local/
make && make install
rm -rf sshpass-1.06.tar.gz
echo "提示：命令已执行！"
exit
;;
'返回')
clear
cd ${myadress}""
exit
;;
*)
clear
echo "#您的选择不存在，请重新选择！"
break
esac
done
done




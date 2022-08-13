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
echo "_____一键《环境》部署___________________"
echo "_____作者：bilibili柠檬冲水UP___________"
echo "_____2022年8月13日V1.1.3________________"
echo "________________________________________"
fruits1=(
 '确定'  
 '返回'
)
select version1 in ${fruits1[@]}
do
case $version1 in
'确定')
clear
node -v
if [ $? = 0 ]
then
echo "已安装node.js"
else
echo "正在安装node.js，请耐心等待..."
yum install -y dnf
dnf module install nodejs:16 -y
echo "nodejs安装成功！"
fi
redis-server -v
if [ $? = 0 ]
then
echo "已安装redis"
redis-server --daemonize yes
echo "redis启动！"
else
echo "正在安装redis，请耐心等待..."
yum -y install git
yum -y install redis
echo "redis安装成功！"
redis-server --daemonize yes
echo "redis启动！"
systemctl enable redis.service
echo "设置开机自启！"
fi
git version
if [ $? = 0 ]
then
echo "Git已安装"
else
echo "正在安装Git，请耐心等待..."
yum -y install git
echo "Git安装成功！"
fi
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





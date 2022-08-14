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
echo "_____《Bot多开器》___________________"
echo "_____作者：bilibili柠檬冲水UP___________"
echo "_____2022年8月13日V1.1.3________________"
echo "________________________________________"
fruits1=(
 '安装'  
 '卸载'  
 '返回'
)
select version1 in ${fruits1[@]}
do
case $version1 in
'安装')
clear
read -p "选择开启数目:" x

break
;;
'卸载')
clear

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





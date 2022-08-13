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
echo "________________________________________"
echo "_______《进程管理》______________________"
echo "_______作者：bilibili柠檬冲水UP__________"
echo "_______提示：升级维护时不需要停止机器人___"
echo "_______提示：升级维护时不需要停止机器人___"
echo "_______提示：运行的机器人数目取决于CPU____"
echo "_______2022年8月13日V1.1.3______________"
echo "________________________________________"
fruits1=(
 '安装PM2' 
 '查看进程列表' 
 '监视所有进程'  
 '运行所有进程' 
 '停止指定进程'
 '停止所有进程'
 '重启指定进程'
 '重启所有进程'
 '杀死特定进程'
 '杀死所有进程'
 '显示进程日记' 
 '返回'
)
select version1 in ${fruits1[@]}
do
case $version1 in
'安装PM2')
clear
cd ${myadress}""
npm i pm2 -g   
echo "安装执行已执行！"
break
;;
'查看进程列表')
clear
cd ${myadress}""
pm2 list
break
;;
'监视所有进程')
clear
cd ${myadress}""
pm2 monit
break
;;
'运行所有进程')
clear
cd ${myadress}""
pm2 start all
break
;;
'停止指定进程')
clear
read -p "进程ID：" x
pm2 list
cd ${myadress}""
pm2 stop $x
break
;;
'停止所有进程')
clear
cd ${myadress}""
pm2 stop all
break
;;
'重启指定进程')
clear
read -p "进程ID：" x
cd ${myadress}""
pm2 list
pm2 restart $x
break
;;
'重启所有进程')
clear
cd ${myadress}""
pm2 restart all
break
;;
'杀死特定进程')
clear
read -p "进程ID：" x
cd ${myadress}""
pm2 restart $x
break
;;
'杀死所有进程')
clear
cd ${myadress}""
pm2 delete all
break
;;
'显示进程日记')
clear
cd ${myadress}""
pm2 logs
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
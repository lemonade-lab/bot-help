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
cd /home/lighthouse
while true; 
do
echo "__________________________________________________"
echo "  《进程管理》  "
echo "PM2：Node.js程序进程管理器"
echo "升级维护时不需要停止机器人"
echo "运行的机器人数目取决于CPU"
echo "__________________________________________________"
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
cd /home/lighthouse
npm i pm2 -g   
echo "安装执行已执行！"
break
;;
'查看进程列表')
clear
cd /home/lighthouse
pm2 list
break
;;
'监视所有进程')
clear
cd /home/lighthouse
pm2 monit
break
;;
'运行所有进程')
clear
cd /home/lighthouse
pm2 start all
break
;;
'停止指定进程')
clear
read -p "进程ID：" x
pm2 list
cd /home/lighthouse
pm2 stop $x
break
;;
'停止所有进程')
clear
cd /home/lighthouse
pm2 stop all
break
;;
'重启指定进程')
clear
read -p "进程ID：" x
cd /home/lighthouse
pm2 list
pm2 restart $x
break
;;
'重启所有进程')
clear
cd /home/lighthouse
pm2 restart all
break
;;
'杀死特定进程')
clear
read -p "进程ID：" x
cd /home/lighthouse
pm2 restart $x
break
;;
'杀死所有进程')
clear
cd /home/lighthouse
pm2 delete all
break
;;
'显示进程日记')
clear
cd /home/lighthouse
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
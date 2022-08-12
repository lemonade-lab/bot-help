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
cd /home/lighthouse
PS3="请选择: "
while true; 
do
echo "__________________________________________________"
echo "    《Yunzai-Bot-Help》控制面板    "
echo "注意：若更新提示清除，请勿返回，需要尝试继续更新！"
echo "注意：若更新提示清除，请勿返回，需要尝试继续更新！"
echo "注意：若更新提示清除，请勿返回，需要尝试继续更新！"
echo "注意：否则，您将直接失去它的支持！"
echo "__________________________________________________"
fruits1=(
 '更新'  
 '卸载'  
 '返回'
)
select version1 in ${fruits1[@]}
do
case $version1 in
'更新')
clear
[ -d /Yunzai-Bot-Help ] || echo "未有指定目录Yunzai-Bot-Help"
[ -d /Yunzai-Bot-Help ] || echo "正在重新拉入脚本"
[ -d /Yunzai-Bot-Help ] || cd /
[ -d /Yunzai-Bot-Help ] || git clone https://github.com/ningmengchongshui/Yunzai-Bot-Help.git
[ -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "启动不存在！"
[ -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "正在删除残留..."
[ -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || rm -rf /Yunzai-Bot-Help
[ -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "清除成功，重新执行更新！"
[ -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || exit
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "启动存在！"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "尝试更新中......"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || cd /Yunzai-Bot-Help
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || git pull
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "更新命令执行完成！"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || cd /home/lighthouse
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "请使用下列两条命令来确保能正确执行最新版"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "——————————————————————————————————————————————————"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "sudo su root"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "cd /"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "sh /Yunzai-Bot-Help/Centos/Centosdemo.sh"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "——————————————————————————————————————————————————"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "若无修改Yunzai权限，可执行下面的指令"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "——————————————————————————————————————————————————"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "sudo su root"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "cd /"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "comd + x /Yunzai-Bot-Help/Centos/Centosdemo.sh"
[ ! -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || echo "——————————————————————————————————————————————————"
[ !  -e /Yunzai-Bot-Help/Centos/Centosdemo.sh ] || exit
echo "——————————————————————————————————————————————————"
cd /home/lighthouse
echo "脚本出错，请执行下面两行命令来手动更新！"
echo "——————————————————————————————————————————————————"
echo "cd /Yunzai-Bot-Help"
echo "git pull"
echo "——————————————————————————————————————————————————"
echo "如果您的想重新获取最新代码，可以先删除后再重新复制"
echo "——————————————————————————————————————————————————"
echo "cd /"
echo "git clone https://github.com/ningmengchongshui/Yunzai-Bot-Help.git"
echo "——————————————————————————————————————————————————"
break
;;
'卸载')
clear
[ -d /Yunzai-Bot-Help ] || echo "——————————————————————————————————————————————————"
[ -d /Yunzai-Bot-Help ] || echo "您已成功卸载！"
[ -d /Yunzai-Bot-Help ] || echo "若需要help的支持，可执行更新操作！"
[ -d /Yunzai-Bot-Help ] || echo "——————————————————————————————————————————————————"
[ -d /Yunzai-Bot-Help ] || break
[ -d /Yunzai-Bot-Help ] && echo "——————————————————————————————————————————————————"
[ -d /Yunzai-Bot-Help ] && echo "正在删除..."
[ -d /Yunzai-Bot-Help ] && rm -rf /Yunzai-Bot-Help
[ -d /Yunzai-Bot-Help ] && echo "清除成功，重新执行更新！"
[ -d /Yunzai-Bot-Help ] && echo "您若需要help的支持，可执行更新操作！"
[ -d /Yunzai-Bot-Help ] && echo "——————————————————————————————————————————————————"
[ -d /Yunzai-Bot-Help ] && break
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
#!/bin/bash
myadress="/home/lighthouse"
readonly myadress
bot="/Yunzai-Bot-Help"
readonly bot
Centosdemo="${bot}/Centos/Centosdemo.sh"
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
echo "____《Yunzai-Bot-Help》控制面板__________"
echo "_更新提示清除，请勿返回，需要尝试继续更新_"
echo "_更新提示清除，请勿返回，需要尝试继续更新_"
echo "_更新提示清除，请勿返回，需要尝试继续更新_"
echo "_否则，您将直接失去它的支持！"
echo "_2022年8月13日V1.1.3____________________"
echo "________________________________________"
fruits1=(
 '更新' 
 '强制更新' 
 '重装'   
 '卸载'  
 '返回'
)
select version1 in ${fruits1[@]}
do
case $version1 in
'更新')
clear
[ -d ${bot} ] || echo "未有指定目录Yunzai-Bot-Help"
[ -d ${bot} ] || echo "正在重新拉入脚本"
[ -d ${bot} ] || cd /
[ -d ${bot} ] || git clone "https://github.com/ningmengchongshui"${bot}".git"
[ -e ${Centosdemo} ] || echo "启动不存在！"
[ -e ${Centosdemo} ] || echo "正在删除残留..."
[ -e ${Centosdemo} ] || rm -rf ${bot}""
[ -e ${Centosdemo} ] || echo "清除成功，重新执行更新！"
[ -e ${Centosdemo} ] || exit
[ ! -e ${Centosdemo} ] || echo "启动存在！"
[ ! -e ${Centosdemo} ] || echo "尝试更新中......"
[ ! -e ${Centosdemo} ] || cd ${bot}""
[ ! -e ${Centosdemo} ] || git pull
[ ! -e ${Centosdemo} ] || echo "更新命令执行完成！"
[ ! -e ${Centosdemo} ] || cd ${myadress}""
[ ! -e ${Centosdemo} ] || echo "请使用下列两条命令来确保能正确执行最新版"
[ ! -e ${Centosdemo} ] || echo "——————————————————————————————————————————————————"
[ ! -e ${Centosdemo} ] || echo "sudo su root"
[ ! -e ${Centosdemo} ] || echo "cd /"
[ ! -e ${Centosdemo} ] || echo "sh ${Centosdemo}"
[ ! -e ${Centosdemo} ] || echo "——————————————————————————————————————————————————"
[ ! -e ${Centosdemo} ] || echo "若无修改Yunzai权限，可执行下面的指令"
[ ! -e ${Centosdemo} ] || echo "——————————————————————————————————————————————————"
[ ! -e ${Centosdemo} ] || echo "sudo su root"
[ ! -e ${Centosdemo} ] || echo "cd /"
[ ! -e ${Centosdemo} ] || echo "comd + x ${Centosdemo}"
[ ! -e ${Centosdemo} ] || echo "——————————————————————————————————————————————————"
[ !  -e ${Centosdemo} ] || exit
echo "——————————————————————————————————————————————————"
cd ${myadress}""
echo "脚本出错，请执行下面两行命令来手动更新！"
echo "——————————————————————————————————————————————————"
echo "cd ${bot}"
echo "git pull"
echo "——————————————————————————————————————————————————"
echo "如果您的想重新获取最新代码，可以先删除后再重新复制"
echo "——————————————————————————————————————————————————"
echo "cd /"
echo "git clone https://github.com/ningmengchongshui${bot}.git"
echo "——————————————————————————————————————————————————"
break
;;
'强制更新')
clear
[ -d ${bot} ] || echo "未有指定目录Yunzai-Bot-Help"
[ -d ${bot} ] || echo "正在重新拉入脚本"
[ -d ${bot} ] || cd /
[ -d ${bot} ] || "https://github.com/ningmengchongshui"${bot}".git"
[ -e ${Centosdemo} ] || echo "启动不存在！"
[ -e ${Centosdemo} ] || echo "正在删除残留..."
[ -e ${Centosdemo} ] || rm -rf ${bot}
[ -e ${Centosdemo} ] || echo "清除成功，重新执行更新！"
[ -e ${Centosdemo} ] || exit
[ ! -e ${Centosdemo} ] || echo "启动存在！"
[ ! -e ${Centosdemo} ] || echo "尝试更新中......"
[ ! -e ${Centosdemo} ] || cd ${bot}""
[ ! -e ${Centosdemo} ] || git fetch --all
[ ! -e ${Centosdemo} ] || git reset --hard main
[ ! -e ${Centosdemo} ] || git pull
[ ! -e ${Centosdemo} ] || echo "更新命令执行完成！"
[ ! -e ${Centosdemo} ] || cd ${myadress}""
[ ! -e ${Centosdemo} ] || echo "请使用下列两条命令来确保能正确执行最新版"
[ ! -e ${Centosdemo} ] || echo "——————————————————————————————————————————————————"
[ ! -e ${Centosdemo} ] || echo "sudo su root"
[ ! -e ${Centosdemo} ] || echo "cd /"
[ ! -e ${Centosdemo} ] || echo "sh ${Centosdemo}"
[ ! -e ${Centosdemo} ] || echo "——————————————————————————————————————————————————"
[ ! -e ${Centosdemo} ] || echo "若无修改Yunzai权限，可执行下面的指令"
[ ! -e ${Centosdemo} ] || echo "——————————————————————————————————————————————————"
[ ! -e ${Centosdemo} ] || echo "sudo su root"
[ ! -e ${Centosdemo} ] || echo "cd /"
[ ! -e ${Centosdemo} ] || echo "comd + x ${Centosdemo}"
[ ! -e ${Centosdemo} ] || echo "——————————————————————————————————————————————————"
[ !  -e ${Centosdemo} ] || exit
echo "——————————————————————————————————————————————————"
cd ${myadress}""
echo "脚本出错，请执行下面两行命令来手动更新！"
echo "——————————————————————————————————————————————————"
echo "cd ${bot}"
echo "git pull"
echo "——————————————————————————————————————————————————"
echo "如果您的想重新获取最新代码，可以先删除后再重新复制"
echo "——————————————————————————————————————————————————"
echo "cd /"
echo "git clone https://github.com/ningmengchongshui${bot}.git"
echo "——————————————————————————————————————————————————"
break
;;
'重装')
clear
read -p "任意值返回，输入0确定卸载："
if [ $x = 0 ]
then
sudo su root
rm -rf ${bot}""
cd /
git "https://github.com/ningmengchongshui"${bot}".git"
cd /Yunzai-Bot-Help/Centos
chmod +x *.sh
echo "重装命令已执行！"
fi
echo "您取消了卸载！"
break
;;
'卸载')
clear
read -p "任意值返回，输入0确定卸载："
if [ $x = 0 ]
then
sudo su root
rm -rf ${bot}""
echo "卸载成功！"
fi
echo "您取消了卸载！"
break
;;
'返回')
clear
exit
;;
*)
clear
echo "########您的选择不存在，请重新选择！"
break
esac
done
done
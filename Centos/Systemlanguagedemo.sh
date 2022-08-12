#!/bin/bash
myadress="/home/lighthouse"
[ -d /home ] || echo "警告：不是Centos系统！退出执行！"
[ -d /home ] || exit
cd /home
[ -d ${myadress} ] || mkdir  lighthouse
[ -d ${myadress} ] || echo "初始化lighthouse目录失败！退出执行！"
cd ${myadress}
[ -d ${myadress}"/YunzaiV2" ] || mkdir  YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir  YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "初始化Yunzai目录失败！退出执行！" 
[ -d ${myadress}"/YunzaiV3" ] || exit
cd ${myadress}
PS3="请选择: "
while true; 
do
echo "__________________________________________________"
echo "《系统语言管理》"
echo "系统语言修改完成后重启生效"
echo "__________________________________________________"
fruits1=(
 '下载语言包' 
 '语言列表'     
 '当前语言' 
 '编辑教程' 
 '编辑语言' 
 '重启' 
 '返回'
)
select version1 in ${fruits1[@]}
do
case $version1 in
'下载语言包')
clear
dnf install langpacks-zh_CN
nf install -y ibus-libpinyin.x86_64
cd ${myadress}

break
;;
'语言列表')
clear
locale -a
cd ${myadress}
break
;;
'当前语言')
clear
echo $LANG
cd ${myadress}
break
;;
'编辑教程')
echo "__________________________________________________"
echo "请查所有语言，找到zh_CN.utf8类似字眼则说明支持中文包"
echo "记住自己的中文包名字，选择编辑时，改为中文即可"
echo "__________________________________________________"
echo "《文件编辑教程》"
echo "按i进入修改模式"
echo "按ESE退出修改模式"
echo "输入:wq!强制保存"
echo "按CTRL+Z退出文件"
cd ${myadress}
break
;;
'编辑语言')
vi /etc/locale.conf
cd ${myadress}
break
;;
'重启')
cd ${myadress}
echo "执行重启，请重新登录！"
shutdown -r now
exit
;;
'返回')
cd ${myadress}
exit
;;
*)
clear
echo "#您的选择不存在，请重新选择！"
cd ${myadress}
break
esac
done
done
#!/bin/bash
[ -d C:/Users ] || echo "警告：不是window系统！退出执行！"
[ -d C:/Users ] || exit
PS3="请选择: "
while true; 
do
echo "___________________________________"
echo "______《Yunzai-Bot-Help》windows"
echo "_______作者：bilibili柠檬冲水UP"
echo "_________________________"
fruits=(
    '远程登录' 
    'help修改'  
    '语音上传'
    '插件管理'  
    '文件管理'  
    '退出'
)
select version in ${fruits[@]}
do
case $version in
'远程登录')
clear
echo "提示：首次登录需要初始化！"
echo "提示：按任意值将返回！"
echo "1 )初始化SSH"
echo "2 )登录"
read -p "choice：" x
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
echo "提示：您选择了返回！"
break
;;

'帮助管理')
clear
echo "请把V2文件放至同一目录的help/v2文件夹！"
echo "请把V3文件放至同一目录的help/v3文件夹！"
echo "编辑help地址https://miao.seutools.com/"
echo "11 )下载喵喵help图片"
echo "12 )上传喵喵help图片"
echo "21 )下载喵喵help样式"
echo "22 )上传喵喵help样式"
read -p "choice：" x
if [ $x = 11 ]
then
read -p "版本：" y
fi
read -p "ip：" ip
scp root@$ip:/home/lighthouse/YunzaiV$y/Yunzai-Bot/plugins/miao-plugin/resources/common/theme/main-01.png /help/v$y/main-01.png
fi

if [ $x = 12 ]
then
read -p "版本：" y
read -p "ip：" ip
scp help/v$y/main-01.png root@$ip:/home/lighthouse/YunzaiV$y/Yunzai-Bot/plugins/miao-plugin/resources/common/theme
fi

if [ $x = 21 ]
then
read -p "版本：" y
read -p "ip：" ip
scp  root@$ip:/home/lighthouse/YunzaiV$y/Yunzai-Bot/plugins/miao-plugin/resources/help/help-list.js help/v$y/help-list.js
scp  root@$ip:/home/lighthouse/YunzaiV$y/Yunzai-Bot/plugins/miao-plugin/resources/help/icon.png help/v$y/icon.png
fi

if [ $x = 22 ]
then
read -p "版本：" y
read -p "ip：" ip
scp help/v$y/help-list.js root@$ip:/home/lighthouse/YunzaiV$y/Yunzai-Bot/plugins/miao-plugin/resources/help
scp help/v$y/icon.png root@$ip:/home/lighthouse/YunzaiV$y/Yunzai-Bot/plugins/miao-plugin/resources/help 
fi

break
;;

'V2插件管理')
clear
echo "请把文件放至同一目录的plugins文件夹！"
echo "请把文件放至同一目录！"
echo "1 )上传所有插件"
echo "2 )单独上传插件"
read -p "choice：" x
if [ $x = 1 ]
then
read -p "版本：" y
if [ $y = 2 ]
then
file="lib"
fi
if [ $y = 3 ]
then
file="plugins"
fi
read -p "ip：" ip
scp plugins/* root@$ip:/home/lighthouse/YunzaiV$y/Yunzai-Bot/$file/example
fi
if [ $x = 2 ]
then
read -p "版本：" x
if [ $x = 2 ]
then
file="lib"
fi
if [ $x = 3 ]
then
file="plugins"
fi
read -p "ip：" ip
read -p "插件命：" name 
scp plugins/$name root@$ip:/home/lighthouse/YunzaiV$x/Yunzai-Bot/$file/example
fi
echo "提示：您选择了返回！"
break
;;

'语音上传')
clear
echo "请把文件放至同一目录的voice文件夹！"
echo "派蒙文件名 paimeng.zip"
echo "角色文件名 china.zip"
echo "提示：按任意值将返回！"
echo "1 )上传派蒙"
echo "2 )上传角色"
read -p "choice：" x
if [ $x = 1 ]
then
read -p "ip：" ip
scp voice/paimeng.zip root@$ip:/Yunzai-Bot-Help/Centos/Allfile/vioce/paimeng
fi
if [ $x = 2 ]
then
read -p "ip：" ip
scp voice/china.zip root@$ip:/Yunzai-Bot-Help/Centos/Allfile/vioce/china
fi
break
;;

'文件管理')
clear
echo "请把文件放至同一目录的file文件夹！"
echo "提示：输入*代表当下所有文件"
echo "地址案例：/home/lighthouse/YunzaiV3/Yunzai-Bot"
echo "地址案例：/home/lighthouse/YunzaiV2/Yunzai-Bot"
echo "1 )上传"
read -p "choice：" x
if [ $x = 1 ]
then
read -p "filename：" filename
read -p "ip：" ip
read -p "adress：" adress
scp $filename root@$ip:$adress
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
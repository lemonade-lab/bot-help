break
PS3="请选择: "
while true
do
echo "__________________________________________________"
echo "欢迎使用《Yunzai-Bot-Help》安装"
echo "作者：bilibili柠檬冲水UP"
echo "提示：请先安装环境后使用"
echo "版本：1.1.0"
echo "__________________________________________________"
fruits0=(
 '安装环境'
 '管理V2'  
 '管理V3' 
 '机器控制'
 '进程管理' 
 '插件管理' 
 '功能扩展'
 '环境管理' 
 '系统语言' 
 'Help控制'
 'SSH管理' 
 '防火墙' 
 '系统重启'
 '退出'
)
select version0 in ${fruits0[@]}
do
case $version0 in
'安装环境')
clear
cd /Yunzai-Bot-Help/Centos
./Nodejsdemo.sh.x
break
;;
'管理V2')
clear
cd /Yunzai-Bot-Help/Centos
./V2demo.sh.x
break
;;
'管理V3')
clear
cd /Yunzai-Bot-Help/Centos
./V3demo.sh.x
break
;;
'机器控制')
clear
cd /Yunzai-Bot-Help/Centos
./Robotdemo.sh.x
break
;;
'进程管理')
clear
cd /Yunzai-Bot-Help/Centos
./Pm2demo.sh.x
break
;;
'插件管理')
clear
cd /Yunzai-Bot-Help/Centos
./Pluginsdeno.sh.x
break
;;
'功能扩展')
clear
cd /Yunzai-Bot-Help/Centos
./Extensiondemo.sh.x
break
;;
'环境管理')
clear
cd /Yunzai-Bot-Help/Centos
./Environmentdemo.sh.x
break
;;
'系统语言')
clear
cd /Yunzai-Bot-Help/Centos
./Systemlanguagedemo.sh.x
break
;;
'SSH管理')
clear
cd /Yunzai-Bot-Help/Centos
./SSHdemo.sh.x
;;
'Help控制')
clear
cd /Yunzai-Bot-Help/Centos
./Update.sh.x
break
;;
'防火墙')
clear

exit
;;
'系统重启')
clear
shutdown -r now
exit
;;

'退出')
clear
exit
;;
*)
clear
echo "#######提示：您的选择不存在！######"
break
;;
esac
done
done
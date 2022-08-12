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
./Nodejsdemo.sh
break
;;
'管理V2')
clear
cd /Yunzai-Bot-Help/Centos
./V2demo.sh
break
;;
'管理V3')
clear
cd /Yunzai-Bot-Help/Centos
./V3demo.sh
break
;;
'机器控制')
clear
cd /Yunzai-Bot-Help/Centos
./Robotdemo.sh
break
;;
'进程管理')
clear
cd /Yunzai-Bot-Help/Centos
./Pm2demo.sh
break
;;
'插件管理')
clear
cd /Yunzai-Bot-Help/Centos
./Pluginsdeno.sh
break
;;
'功能扩展')
clear
cd /Yunzai-Bot-Help/Centos
./Extensiondemo.sh
break
;;
'环境管理')
clear
cd /Yunzai-Bot-Help/Centos
./Environmentdemo.sh
break
;;
'系统语言')
clear
cd /Yunzai-Bot-Help/Centos
./Systemlanguagedemo.sh
break
;;
'SSH管理')
clear
cd /Yunzai-Bot-Help/Centos
./SSHdemo.sh
;;
'Help控制')
clear
cd /Yunzai-Bot-Help/Centos
./Update.sh
break
;;
'防火墙')
clear
cd /Yunzai-Bot-Help/Centos
./Firewalldemo.sh
exit
;;
'系统重启')
clear
read -p "任意值返回，输入0确定：" x
if [ $x = 0 ]
then
shutdown -r now
fi
echo "您取消了重启操作！"
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
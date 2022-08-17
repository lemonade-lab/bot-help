break
Centos="/Yunzai-Bot-Help/Centos"
readonly Centos
PS3="请选择: "
while true
do
echo "_______________________________________"
echo "_____欢迎使用《Yunzai-Bot-Help》安装____"
echo "_____作者：bilibili柠檬冲水UP___________"
echo "_____提示：请先安装环境后使用____________"
echo "_____2022年8月16日V1.1.4________________"
echo "________________________________________"
fruits0=(
 'Help帮助'
 '管理V2'  
 '管理V3' 
 '机器控制'
 '进程管理' 
 '插件管理' 
 '功能扩展'
 '环境管理'
 '系统语言' 
 'Help控制'
 'Bot多开' 
 'SSH管理' 
 '防火墙' 
 '系统重启'
 '退出'
)
select version0 in ${fruits0[@]}
do
case $version0 in
'管理V2')
clear
cd "${Centos}"
./V2demo.sh
break
;;
'管理V3')
clear
cd "${Centos}"
./V3demo.sh
break
;;
'机器控制')
clear
cd "${Centos}"
./Robotdemo.sh
break
;;
'进程管理')
clear
cd "${Centos}"
./Pm2demo.sh
break
;;
'插件管理')
clear
cd "${Centos}"
./Pluginsdeno.sh
break
;;
'功能扩展')
clear
cd "${Centos}"
./Extensiondemo.sh
break
;;
'环境管理')
clear
cd "${Centos}"
./Environmentdemo.sh
break
;;
'系统语言')
clear
cd "${Centos}"
./Systemlanguagedemo.sh
break
;;
'SSH管理')
clear
cd "${Centos}"
./SSHdemo.sh
;;
'Help控制')
clear
cd "${Centos}"
./Update.sh
break
;;
'Help帮助')
clear
echo "《help手册与常用指令》"
echo "————————————————————————"
echo "1.没有权限-加权限"
echo "cd ${Centos}"
echo "chmod +x *.sh"
echo "————————————————————————"
echo "2.常用指令"
echo "sudo su root #获取root权限"
echo "ls #查看当下目录"
echo "rm -rf filename #删除文件 "
echo "cd /filename/filename  #打开目录"
echo "cd filename/filename  #打开该目录下的目录"
echo "vi filename  #编辑文件"
echo "————————————————————————"
break
;;
'Bot多开')
clear
cd "${Centos}"
./Nodejsdemo.sh
echo "该功能涉及服务器性能与pm2"
echo "不会使用的朋友慎入"
echo "目前功能处于调试中"
exit
;;
'防火墙')
clear
cd "${Centos}"
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
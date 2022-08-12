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
echo "  《SSH管理》"
echo "提示：编辑完成后重启生效！"
echo "__________________________________________________"
fruits2=(
'SSH初始化' 
'编辑说明' 
'编辑SSH' 
'重启SSH' 
'SSH状态' 
'返回'
)
select version2 in ${fruits2[@]}
do
case $version2 in
'SSH初始化')
clear
yum -y remove openssh-server
yum -y install openssh-server
break
;;
'编辑说明')
echo "《文件编辑教程》"
echo "按i进入修改模式"
echo "按ESE退出修改模式"
echo "输入:wq!并回车强制保存"
echo "按CTRL+Z退出文件"
echo "——————————————————————————————"
echo "请编辑SSH"
echo "寻找并更改以下参数"
echo "——————————————————————————————"
echo "改#port 22为"
echo "port 22"
echo "——————————————————————————————"
echo "改#PubkeyAuthentication yes为"
echo "PubkeyAuthentication yes"
echo "——————————————————————————————"
cd /home/lighthouse
break
;;
'编辑SSH')
clear
vi /etc/ssh/sshd_config
break
;;
'重启SSH')
clear
systemctl restart sshd.service
cd /home/lighthouse
break
;;
'SSH状态')
clear
systemctl status sshd.service
cd /home/lighthouse
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
#!/bin/bash


version=$(cat /etc/issue)
readonly version

Ubuntu="/yunzai-bot-help/ubuntu"
readonly Ubuntu

while true
do
	OPTION=$(whiptail \
		--title "《Yunzai-Bot-HelpV1.1.6》" \
		--menu "$version" \
		15 50 5 \
		"1" "工具管理HelpManage" \
        "2" "机器管理administrat" \
        "3" "运行管理BackControl" \
        "4" "进程管理ProcessManage" \
		"5" "插件管理" \
		"6" "扩展功能" \
        "7" "环境管理EnvironManage" \
        "8" "系统语言SystemLanguage" \
        "9" "远程管理SSHManage" \
        "10" "防火设置firewall" \
        "11" "系统重启restart" \
		3>&1 1>&2 2>&3)

	x=$?
	if [ $x = 0 ]
	then

#HELP设置
if [ $OPTION = 1 ]
then
	cd "${Ubuntu}"
	./Update.sh
fi

#机器管理
if [ $OPTION = 2 ]
then
	cd "${Ubuntu}"
	./Yunzai_install.sh
fi
#运行管理
if [ $OPTION = 3 ]
then
	cd "${Ubuntu}"
	./Robotdemo.sh
fi

#插件管理
if [ $OPTION = 4 ]
then
	cd "${Ubuntu}"
	./Pm2demo.sh
fi

if [ $OPTION = 5 ]
then
	cd "${Ubuntu}"
	./Pluginsdeno.sh
fi

if [ $OPTION = 6 ]
then
	cd "${Ubuntu}"
	./Extensiondemo.sh
fi

if [ $OPTION = 7 ]
then
	cd "${Ubuntu}"
	./Environmentdemo.sh
fi

if [ $OPTION = 8 ]
then
	cd "${Ubuntu}"
	./Systemlanguagedemo.sh
fi

if [ $OPTION = 9 ]
then
	cd "${Ubuntu}"
	./SSHdemo.sh
fi

if [ $OPTION = 10 ]
then
	cd "${Ubuntu}"
	./Firewalldemo.sh
fi

if [ $OPTION = 11 ]
then
	Choise=$(whiptail \
		--title "《Yunzai-Bot-Help》" \
		--menu "$version\n#请确认是否确定重启..." \
		15 50 3 \
		"1" "重启" \
		3>&1 1>&2 2>&3)
			y=$?
			if [ $y = 0 ]
			then
				shutdown -r now
			fi
fi

else
	clear
	echo "退出成功！"
	exit
	fi
done

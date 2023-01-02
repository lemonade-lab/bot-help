#!/bin/bash

version=$(cat /etc/redhat-release)
readonly version
myadress="/home/lighthouse"
readonly myadress
centos="${myadress}/centos/Yunzai-Bot"
readonly centos
yunzaiplugin="${yunzai}/plugins"
readonly yunzaiplugin

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/centos" ] || mkdir centos
[ -d ${myadress}"/centos" ] || exit

yunzaiverification(){
   [ -d "${yunzaiplugin}" ] || echo "Not installed未安装"
   [ -d "${yunzaiplugin}" ] || read -p "Enter and continue回车并继续..." Enter
}

while true
do
    OPTION=$(whiptail \
        --title "《Yunzai-Bot》" \
        --menu "$version" \
        15 50 5 \
        "1" "运行状态status" \
		"2" "启动云崽run" \
		"3" "停止云崽stop" \
        3>&1 1>&2 2>&3)
        feedback=$?
	    if [ $feedback = 0 ]
	    then
		
		    if [ $OPTION = 1 ]
		    then
			cd "${myadress}"
			pm2 list
			read -p "Enter and continue回车并继续..." c
	     	fi

		    if [ $OPTION = 2 ]
		    then yunzaiverification
			[ -e ${centos}"/config/config/qq.yaml" ] || echo "#您未配置机器人V3QQ"
			[ ! -e ${centos}"/config/config/qq.yaml" ] || cd "${centos}"
			[ ! -e ${centos}"/config/config/qq.yaml" ] || npm stop
			[ ! -e ${centos}"/config/config/qq.yaml" ] || npm start
			[ ! -e ${centos}"/config/config/qq.yaml" ] || echo "后台运行"
	 		read -p "Enter and continue回车并继续..." c
	     	fi

	    	if [ $OPTION = 3 ]
	    	then yunzaiverification
			[ ! -d ${centos}"/plugins" ] || cd "${centos}"
			[ ! -d ${centos}"/plugins" ] || npm stop
			[ ! -d ${centos}"/plugins" ] || echo "关闭"
			read -p "Enter and continue回车并继续..." c
		    fi
    else
        exit
    fi
done

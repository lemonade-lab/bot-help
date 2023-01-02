#!/bin/bash
#quanxue 2022.12.30 10:26 update 3rd
version=$(cat /etc/redhat-release)
readonly version

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/centos" ] || mkdir centos
[ -d ${myadress}"/centos" ] || echo "initialization failed初始化失败"
[ -d ${myadress}"/centos" ] || read -p "Enter and continue回车并继续..."
[ -d ${myadress}"/centos" ] || exit
cd "${myadress}"


centos="${myadress}/centos/Yunzai-Bot"
readonly centos
XiuxianV3="${myadress}/centos/XiuXianV3"
readonly XiuxianV3

funv3(){
   [ -d ${centos}"/plugins" ] || echo "Not installed#未安装V3！"
}

while true
do
    OPTION=$(whiptail \
        --title "《Yunzai-Bot》" \
        --menu "$version" \
        15 50 5 \
        "1" "status运行状态" \
		"2" "run Yunzai-Bot启动云崽V3" \
		"3" "stop Yunzai-Bot停止云崽V3" \
        3>&1 1>&2 2>&3)
    x=$?
	if [ $x = 0 ]
	then
		if [ $OPTION = 1 ]
		then
			cd "${myadress}"
			pm2 list
			read -p "Enter and continue回车并继续..." c
		fi
		if [ $OPTION = 2 ]
		then
			[ -d ${centos}"/plugins" ] || echo "Not installed#未安装V3！"
			[ -e ${centos}"/config/config/qq.yaml" ] || echo "#您未配置机器人V3QQ"
			[ ! -e ${centos}"/config/config/qq.yaml" ] || cd "${centos}"
			[ ! -e ${centos}"/config/config/qq.yaml" ] || npm stop
			[ ! -e ${centos}"/config/config/qq.yaml" ] || npm start
			[ ! -e ${centos}"/config/config/qq.yaml" ] || echo "#V3后台运行"
			read -p "Enter and continue回车并继续..." c
		fi
		if [ $OPTION = 3 ]
		then
			[ -d ${centos}"/plugins" ] || echo "Not installed#未安装V3！"
			[ ! -d ${centos}"/plugins" ] || cd "${centos}"
			[ ! -d ${centos}"/plugins" ] || npm stop
			[ ! -d ${centos}"/plugins" ] || echo "#V3关闭"
			read -p "Enter and continue回车并继续..." c
		fi
    else
        exit
    fi
done

#!/bin/bash

version=$(cat /etc/redhat-release)
readonly version

myadress="/home/lighthouse"
readonly myadress

alemon="${myadress}/Bot/alemon-bot"
readonly alemon

alemonplugin="${alemon}/plugins"
readonly alemonplugin

aaarch(){
	case $(arch) in
		x86_64) aarch="x64";;
		aarch64) aarch="arm64";;
		*)
			read -p "$(echo -e "暂不支持armv71,s390x等架构\n手动安装参考Ubuntu详细\n回车退出")" Enter
			exit;;
	esac
}

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/Bot" ] || mkdir Bot
[ -d ${myadress}"/Bot" ] || exit
cd "${myadress}"

alemonverification(){
   [ -d "${alemonplugin}" ] || echo "Not installed未安装"
   [ -d "${alemonplugin}" ] || read -p "Enter回车并继续..." Enter
   [ -d "${alemonplugin}" ] || return "1"
   return "0"
}

while true
do
OPTION=$(whiptail \
--title "《Alemon-Bot》" \
--menu "$version" \
15 50 5 \
"1" "install快捷安装" \
"2" "startUp启动账号" \
"3" "reLogin重新登录" \
"4" "toUpdate机器更新" \
"5" "unInstall机器卸载" \
3>&1 1>&2 2>&3)

feedback=$?
if [ $feedback = 0 ]
then

#安装
    if [ $OPTION = 1 ]
    then
    if [ $(ls "$myadress" | grep centos ) ]
    then
	cd "$myadress"/centos/alemon-bot && npm run stop
	mv "$myadress"/centos "$myadress"/Bot
	echo "已移动目录并关闭机器人，请重启机器人"
	read -p "Enter回车结束..."
	continue
    fi
    aaarch
    node -v
        if [ $? != 0 ]
        then
	wget --version
	if [ $? != 0 ]
	then yum -y install wget
	fi
	wget -P "${myadress}" https://repo.huaweicloud.com/nodejs/v16.20.0/node-v16.20.0-linux-${aarch}.tar.gz
	mkdir /usr/local/node-v16.20.0
	tar -xf "${myadress}"/node-v16.20.0-linux-${aarch}.tar.gz --strip-components 1 -C /usr/local/node-v16.20.0
	echo -e '#node v16.20.0\nexport PATH=/usr/local/node-v16.20.0/bin:$PATH' > /etc/profile.d/node.sh
	echo -e '#node v16.20.0\nexport PATH=/usr/local/node-v16.20.0/bin:$PATH' >> /etc/bashrc
	chmod +x /etc/profile.d/node.sh
	source /etc/profile.d/node.sh
	source /etc/profile
	ln -sfn /usr/local/node-v16.20.0/bin/* /usr/local/bin
	rm -rf node-v16.20.0-linux-${aarch}.tar.gz
        fi
    redis-server -v
        if [ $? != 0 ]
        then
        yum -y install git
	yum -y install epel-release
	sed -e 's!^metalink=!#metalink=!g' \
	-e 's!^#baseurl=!baseurl=!g' \
	-e 's!http://download\.fedoraproject\.org/pub/epel!https://mirrors.tuna.tsinghua.edu.cn/epel!g' \
	-e 's!http://download\.example/pub/epel!https://mirrors.tuna.tsinghua.edu.cn/epel!g' -i /etc/yum.repos.d/epel*.repo
        yum -y install redis
        redis-server --daemonize yes
        systemctl enable redis.service
        fi
    git version
        if [ $? != 0 ]
        then
        yum -y install git
        fi
    
    ##alemon-bot
    cd "${myadress}/Bot"
    [ -d "${alemonplugin}" ] || git clone --depth=1 https://gitee.com/ningmengchongshui/alemon-bot.git

        if [ ! -d "${alemonplugin}" ]
        then
        rm -rf "${alemon}"
        echo "安装失败Installation failed" 
        read -p "Enter回车并继续..." Enter
        break
        fi

    ##环境准备
    yum install nss -y
    yum update nss -y
    #文字安装
    yum groupinstall fonts -y
    #安装Chromium
    yum -y install chromium


    ##依赖
    cd "${alemon}"
    npm config set registry https://registry.npmmirror.com
    npm install alemon-cli -g
    npm install
    #安装Chromium

    ##返回
    read -p "安装成功,请启动账号,回车并继续Enter..." Enter
    fi
    
    #启动
    if [ $OPTION = 2 ]
    then alemonverification
        if [ $? = "0" ]
        then
	echo
        echo -e "\e[31m 退出请使用Ctrl+C \e[0m"
        echo
        cd "${alemon}"
	npm run app
	echo -e "\n"
	read -p "退出成功,回车并继续Enter..." Enter
        fi
    fi   

    #登录
    if [ $OPTION = 3 ]
    then alemonverification
        if [ $? = "0" ]
        then
        cd "${alemon}"
        npm run login
        fi
    fi   
    
    #更新
    if [ $OPTION = 4 ]
    then alemonverification
        if [ $? = "0" ]
        then
        cd "${alemon}"
        git pull
        read -p "更新完成" Enter
        fi
    fi
    
    #卸载
    if [ $OPTION = 5 ]
    then alemonverification
        if [ $? = "0" ]
        then
        rm -rf "${alemon}"
        read -p "卸载完成" Enter
        fi
    fi

    #返回
    cd "${myadress}"
else
    exit
fi
done

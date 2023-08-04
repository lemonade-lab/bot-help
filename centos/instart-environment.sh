#!/bin/bash
version=$(cat /etc/redhat-release)
readonly version
myadress="/home/lighthouse"
readonly myadress
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


while true
do
OPTION=$(whiptail \
--title "《instart-environment》" \
--menu "$version" \
15 50 5 \
"1" "开始安装" \
3>&1 1>&2 2>&3)

feedback=$?
if [ $feedback = 0 ]
then

#安装
    if [ $OPTION = 1 ]
    then

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
 

    ##环境准备
    yum install nss -y
    yum update nss -y
    #文字安装
    yum groupinstall fonts -y
    #安装Chromium
    yum -y install chromium


    ##依赖
    npm config set registry https://registry.npmmirror.com
    npm install alemon-cli -g
    npm install
    #安装Chromium

    ##返回
    read -p "安装成功,回车并继续Enter..." Enter
    fi
    
  

    #返回
    cd "${myadress}"
else
    exit
fi
done

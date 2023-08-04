#!/bin/bash
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
#环境准备
yum install nss -y
yum update nss -y
#文字安装
yum groupinstall fonts -y
#安装Chromium
yum -y install chromium
#依赖
npm config set registry https://registry.npmmirror.com
npm install alemon-cli -g
#!/bin/bash

source /bot-help/globals.sh

# 进入
cd "$DIRECTORY"

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot》" \
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
	git version
        if [ $? != 0 ]
        then
        yum -y install git
        fi
	wget --version
	if [ $? != 0 ]
	then yum -y install wget
	fi
	wget -P "$DIRECTORY" https://repo.huaweicloud.com/nodejs/v16.20.0/node-v16.20.0-linux-${aarch}.tar.gz
	mkdir /usr/local/node-v16.20.0
	tar -xf "$DIRECTORY"/node-v16.20.0-linux-${aarch}.tar.gz --strip-components 1 -C /usr/local/node-v16.20.0
	echo -e '#node v16.20.0\nexport PATH=/usr/local/node-v16.20.0/bin:$PATH' > /etc/profile.d/node.sh
	chmod +x /etc/profile.d/node.sh
	source /etc/profile.d/node.sh
	ln -sfn /usr/local/node-v16.20.0/bin/* /usr/local/bin
	rm -rf "$DIRECTORY"/node-v16.20.0-linux-${aarch}.tar.gz
        fi

	if [ ! $(strings /usr/lib64/libstdc++.so.6 | grep 'CXXABI_1.3.8') ]
	then
	cd "$DIRECTORY"
        git clone https://gitee.com/WinterChocolates/libstdc-.so.6.0.26.git
        mv "$DIRECTORY"/libstdc-.so.6.0.26/libstdc++.so.6.0.26 /lib64/
        rm -rf /lib64/libstdc++.so.6
        ln -s /lib64/libstdc++.so.6.0.26 /lib64/libstdc++.so.6
        rm -rf "$DIRECTORY"/libstdc-.so.6.0.26
	fi

    ##环境准备
    yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y
    yum install libdrm libgbm libxshmfence -y
    yum install nss -y
    yum update nss -y
    #文字安装
    yum groupinstall fonts -y
    #安装Chromium
    yum -y install chromium

    ##依赖
    npm config set registry https://registry.npmmirror.com
    npm install pnpm -g
    pnpm config set registry https://registry.npmmirror.com
    npm install pm2 -g
    ln -sfn /usr/local/node-v16.20.0/bin/* /usr/local/bin

    ##返回
    read -p "完成机器人环境安装!\n回车并继续Enter..." Enter
    fi
    
    #返回
    cd "$DIRECTORY"
else
    exit
fi
done

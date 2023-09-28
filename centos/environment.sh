#!/bin/bash

source /bot-help/globals.sh


# 版本控制

centosNodeV='v16.20.0'
centosRedisV='v16.20.0'


# 进入
cd "$DIRECTORY"

while true; do
    OPTION=$(whiptail \
        --title "《Environment》" \
        --menu "$version" \
        15 50 5 \
        "1" "安装node" \
        "2" "安装mysql" \
        "3" "安装redis" \
        "4" "安装pcre" \
        "5" "安装nginx" \
        "6" "安装epel-release" \
        3>&1 1>&2 2>&3)
    feedback=$?
    if [ $feedback = 0 ]; then

        #安装
        if [ $OPTION = 1 ]; then

            node -v
            if [ $? != 0 ]; then

                wget -P "$DIRECTORY" https://repo.huaweicloud.com/nodejs/v16.20.0/node-v16.20.0-linux-$architecture.tar.gz
                mkdir /usr/local/node-v16.20.0
                tar -xf "$DIRECTORY"/node-v16.20.0-linux-$architecture.tar.gz --strip-components 1 -C /usr/local/node-v16.20.0
                echo -e '#node v16.20.0\nexport PATH=/usr/local/node-v16.20.0/bin:$PATH' >/etc/profile.d/node.sh
                chmod +x /etc/profile.d/node.sh
                source /etc/profile.d/node.sh
                ln -sfn /usr/local/node-v16.20.0/bin/* /usr/local/bin
                rm -rf "$DIRECTORY"/node-v16.20.0-linux-$architecture.tar.gz
            fi

            if [ ! $(strings /usr/lib64/libstdc++.so.6 | grep 'CXXABI_1.3.8') ]; then
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
            yum  install chromium -y

            ##依赖
            npm config set registry https://registry.npmmirror.com
            npm install pnpm -g
            pnpm config set registry https://registry.npmmirror.com
            npm install pm2 -g
            ln -sfn /usr/local/node-v16.20.0/bin/* /usr/local/bin

            ##返回
            read -p "完成机器人环境安装!回车并继续Enter..." Enter
        fi

        if [ $OPTION = 2 ]; then

            yum localinstall https://repo.mysql.com//mysql80-community-release-el7-1.noarch.rpm -y
            rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022 
            yum install mysql-community-server -y
            systemctl start mysqld  # 启动
            systemctl enable mysqld # 自启动
            read -p "完成数据库安装!回车并继续Enter..." Enter

        fi

        if [ $OPTION = 3 ]; then

            cd "$AppName/file"

            # 检查是否已经存在 Redis 源代码目录
            if [ ! -d "$AppName/file/redis-6.2.13" ]; then
                # 下载 Redis
                wget http://download.redis.io/releases/redis-6.2.13.tar.gz
                tar xzf redis-6.2.13.tar.gz
            fi

            cd redis-6.2.13

            # 检查是否已经编译安装 Redis
            if [ ! -x "$AppName/file/redis-6.2.13/src/redis-server" ]; then
                # 编译 Redis
                make
                make install
            fi

            # 启动 Redis 服务
            redis-server --daemonize yes

            
            cd "$AppName/file"

            # 设置
            sh  redis.sh 
            
            echo "地址:$AppName/file/redis"

            read -p "完成数据库安装!回车并继续Enter..." Enter

        fi

        if [ $OPTION = 4 ]; then

            #基础环境
            yum install make zlib zlib-devel gcc-c++ libtool openssl openssl-devel -y

            # 检查是否已经安装了 pcre
            if [ ! -d "/usr/local/pcre-8.45" ]; then
               
                cd /usr/local
                wget http://downloads.sourceforge.net/project/pcre/pcre/8.45/pcre-8.45.tar.gz
                tar zxvf pcre-8.45.tar.gz
                cd pcre-8.45
                ./configure
                make
                make install

            fi

            # 检查
            pcre-config --version

            echo "地址:/usr/local/pcre"

            read -p "完成/usr/local/pcre安装!回车并继续Enter..." Enter

        fi

        if [ $OPTION = 5 ]; then

            # 检查是否已经安装了 nginx
            if [ ! -d "/usr/local/nginx-1.24.0" ]; then

                cd /usr/local
                wget  http://nginx.org/download/nginx-1.24.0.tar.gz
                tar nginx-1.24.0.tar.gz
                cd nginx-1.24.0
                ./configure --prefix=/usr/local/nginx --with-http_gzip_static_module --with-http_stub_status_module --with-http_ssl_module --with-http_v2_module --with-pcre=/usr/local/pcre-8.45
                make
                make install

            fi

            # 检查
            /usr/local/nginx/sbin/nginx -v

            echo "地址:/usr/local/nginx"

            read -p "完成安装!回车并继续Enter..." Enter

        fi

        if [ $OPTION = 6 ]; then

            yum install epel-release -y

            yum install https://rpms.remirepo.net/enterprise/remi-release-7.rpm -y

            yum-config-manager --enable remi -y

            read -p "完成安装!回车并继续Enter..." Enter

        fi

        #最后返回
        cd "$DIRECTORY"

    else
        exit
    fi
done

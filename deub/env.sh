#!/bin/bash

source /visible/globals.sh

cd "$DIRECTORY"

while true
do
	OPTION=$(whiptail \
		--title "《Env Deploy》" \
		--menu "$version" \
		15 50 5 \
		"0" "刷新环境" \
		"1" "安装node" \
		"2" "安装MySql" \
		"3" "安装redis" \
		"4" "安装pcre" \
		"5" "安装Nginx" \
	3>&1 1>&2 2>&3)
	feedback=$?
	if [ $feedback = 0 ]; then
		if [ $OPTION = 0 ]; then
			source /etc/profile
			read -p "环境已刷新!回车并继续Enter..." Enter
		fi

		if [ $OPTION = 1 ]; then
			wget -P "$DIRECTORY" https://repo.huaweicloud.com/nodejs/v$centosNodeV/node-v$centosNodeV-linux-$architecture.tar.gz
			mkdir "/usr/local/node-v$centosNodeV"
			tar zxvf "$DIRECTORY/node-v$centosNodeV-linux-$architecture.tar.gz" --strip-components 1 -C "/usr/local/node-v$centosNodeV"
                	echo -e '#node v16.20.0\nexport PATH=/usr/local/node-v16.20.0/bin:$PATH' >/etc/profile.d/node.sh
			chmod +x /etc/profile.d/node.sh
			source /etc/profile.d/node.sh
			source /etc/profile
			ln -sfn "/usr/local/node-v$centosNodeV/bin/*" /usr/local/bin
			rm -rf "$DIRECTORY/node-v$centosNodeV-linux-$architecture.tar.gz"
			read -p "完成nodejs安装回车并继续Enter..." Enter
		fi

		if [ $OPTION = 2 ]; then
			wget -P "$DIRECTORY" https://repo.mysql.com/mysql-apt-config_0.8.30-1_all.deb
			cd "$DIRECTORY"
			dpkg -i mysql-apt-config_0.8.30-1_all.deb
			apt update -y
			apt install mysql-server -y
			rm -rf "$DIRECTORY/mysql-apt-config_0.8.30-1_all.deb"
			read -p "完成mysql安装回车并继续Enter..." Enter
		fi

		if [ $OPTION = 3 ]; then
			apt install build-essential tcl -y
			if [ ! -d "$AppName/file/redis-$centosRedisV" ]; then
				cd "$AppName/file"
				wget "https://mirrors.huaweicloud.com/redis/redis-$centosRedisV.tar.gz"
				tar zxvf "redis-$centosRedisV.tar.gz"
			fi

			cd "$AppName/file/redis-$centosRedisV"
			if [ ! -x "$AppName/file/redis-$centosRedisV/src/redis-server" ]; then
				make && make install
			fi

			./src/redis-server --daemonize yes
			bash "$AppName/file/redis.sh"
			echo "$AppName/file/redis-$centosRedisV"

			read -p "完成Redis安装!回车并继续Enter..." Enter
		fi

		if [ $OPTION = 4 ]; then
			apt install libpcre3 libpcre3-dev -y
			read -p "完成Pcre安装!回车并继续Enter..." Enter
		fi

		if [ $OPTION = 5 ]; then
			apt install build-essential libpcre3 libpcre3-dev zlib1g zlib1g-dev openssl libssl-dev -y
			if [ ! -d "/usr/local/nginx-$centosNginxV" ]; then
				cd /usr/local/src
				wget "http://nginx.org/download/nginx-$centosNginxV.tar.gz"
				tar zxvf "nginx-$centosNginxV.tar.gz"
				cd /usr/local/src/nginx-$centosNginxV
				./configure --prefix=/usr/local/nginx --with-http_gzip_static_module --with-http_stub_status_module --with-http_ssl_module --with-http_v2_module
				make && make install
			fi
			/usr/local/nginx/sbin/nginx -v
			echo "/usr/local/nginx-$centosNginxV"
			read -p "完成Nginx安装!回车并继续Enter..." Enter
		fi
		cd "$DIRECTORY"
	else
		exit
	fi
done

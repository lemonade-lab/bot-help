#!/bin/bash
#环境管理
version=$(cat /etc/issue)
readonly version

myadress="/home/lighthouse"
readonly myadress

while true
do
	OPTION=$(whiptail \
		--title "《Help-Environment》" \
		--menu "$version" \
		15 50 5 \
		"1" "环境search" \
		"2" "安装Redis" \
		"3" "安装zip" \
		"4" "安装Python" \
		"5" "安装ffmpeg" \
		"6" "安装git" \
		3>&1 1>&2 2>&3)
	feedback=$?

	if [ $feedback = 0 ]
	then

		if [ $OPTION = 1 ]
		then 
			echo "nodejs"
			node -v
			echo "redis"
			redis-server -v
			echo "git"
			git version
			read -p "回车并继续Enter..." y
		fi

		if [ $OPTION = 2 ]
		then
			ps -aux | grep redis
			read -p "回车并继续Enter..." y
		fi

		if [ $OPTION = 3 ]
		then
			apt-get install -y unzip zip
		fi

		if [ $OPTION = 4 ]
		then
			OPTIONPY=$(whiptail \
				--title "安装Python3.9.0" \
				--menu "$version" \
				15 50 5 \
				"1" "安装Python3.9" \
				"2" "卸载Python3.9" \
				3>&1 1>&2 2>&3)
			feedback=$?
			if [ $feedback = 0 ]
			then
				if [ $OPTIONPY = 1 ]
				then
					rm -rf /usr/bin/python3
					rm -rf /usr/bin/pip3
					apt update && apt install -y gcc make build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libbz2-dev liblzma-dev sqlite3 libsqlite3-dev tk-dev uuid-dev libgdbm-compat-dev
					wget -P /usr/local/src https://repo.huaweicloud.com/python/3.9.0/Python-3.9.0.tgz
					cd /usr/local/src/
					tar -zxvf Python-3.9.0.tgz
					cd Python-3.9.0
					./configure --prefix=/usr/local/python3
					make && make install
					echo -e '# python3.9.0\nexport PYTHON_HOME=/usr/local/python3\nexport PATH=$PYTHON_HOME/bin:$PATH' >> /etc/profile
					source /etc/profile
					python3 --version
					pip3 --version
					rm -rf /usr/local/src/*
					echo "安装成功"
					read -p "回车并继续Enter..." y
				fi
				if [ $OPTIONPY = 2 ]
				then
					rm -rf /usr/local/python3
					sed -i '/# python3.9.0/d' /etc/profile
					sed -i '/PYTHON_HOME/d' /etc/profile
					rm -rf /etc/profile.d/python3.sh
					rm -rf /usr/local/bin/pip3
					rm -rf /usr/local/bin/python3
					rm -rf /usr/bin/python3
                                        rm -rf /usr/bin/pip3
					source /etc/profile
					echo "卸载成功"
					read -p "回车并继续Enter..." y
				fi
			fi
		fi
		if [ $OPTION = 5 ]
		then
			apt update && apt install -y ffmpeg
			ffmpeg -version
			read -p "回车并继续Enter..." y
		fi

		if [ $OPTION = 6 ]
		then
			OPTIONGIT=$(whiptail \
				--title "安装Git2.39.0" \
				--menu "$version" \
				15 50 5 \
				"1" "安装Git2.39.0" \
				"2" "卸载Git2.39.0" \
				3>&1 1>&2 2>&3)
			feedback=$?
			if [ $feedback = 0 ]
			then
				if [ $OPTIONGIT = 1 ]
				then
					apt remove -y git
					apt update && apt install -y gcc make gzip tar wget libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
					wget -P /usr/local/src https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.39.0.tar.xz
					cd /usr/local/src/
					tar -xf git-2.39.0.tar.xz
					cd /usr/local/src/git-2.39.0
					./configure --prefix=/usr/local/git
					make && make install
					echo -e '# Git2.39.0\nexport PATH=/usr/local/git/bin:$PATH' >> /etc/profile
					source /etc/profile
					git --version
					rm -rf /usr/local/src/*
					echo "安装成功"
					read -p "回车并继续Enter..." y
				fi
				if [ $OPTIONGIT = 2 ]
				then
					rm -rf /usr/local/git
					rm -rf /etc/profile.d/git.sh
					rm -rf /usr/local/bin/git
					sed -i '/# Git2.39.0/d' /etc/profile
					sed -i '/git/d' /etc/profile
					source /etc/profile
					echo "卸载成功"
					read -p "回车并继续Enter..." y
				fi
			fi
		fi

	else
		exit
	fi
done

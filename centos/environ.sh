#!/bin/bash
#环境管理
version=$(cat /etc/redhat-release)
readonly version

myadress="/home/lighthouse"
readonly myadress

while true
do
OPTION=$(whiptail \
--title "《Help-Environment》" \
--menu "$version\n$news" \
15 50 5 \
"1" "环境search" \
"2" "安装Redis" \
"3" "安装zip" \
"4" "安装sshpass" \
"5" "安装Python" \
"6" "安装ffmpeg" \
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
    read -p "Enter and continue回车并继续..." y
    fi

    if [ $OPTION = 2 ]
    then ps -aux | grep redis
    read -p "Enter and continue回车并继续..." y
    fi

    if [ $OPTION = 3 ]
    then yum install -y unzip zip
    fi

    if [ $OPTION = 4 ]
    then
    cd "${myadress}"
    wget https://nchc.dl.sourceforge.net/project/sshpass/sshpass/1.06/sshpass-1.06.tar
    tar  zxf sshpass-1.06.tar.gz
    ./configure  --prefix=/usr/local/
    make && make install
    rm -rf sshpass-1.06.tar.gz
    read -p "Enter and continue回车并继续..." y
    fi

    if [ $OPTION = 5 ]
    then
    wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
    tar -zxvf Python-3.9.0.tgz
    rm -rf Python-3.9.0.tgz
    cd Python-3.9.0
    ./configure prefix=/usr/local/python3
    make && make install
    ln -s /usr/local/python3/bin/python3.9 /usr/bin/python3
    ln -s /usr/local/python3/bin/pip3.9 /usr/bin/pip3
    read -p "Enter and continue回车并继续..." y
    fi

    if [ $OPTION = 6 ]
    then
    dnf install epel-release
    yum config-manager -set-enabled PowerTools
    yum -y install yum-utils
    yum-config-manager --add-repo=https://negativo17.org/repos/epel-multimedia.repo
    dnf install ffmpeg
    ffmpeg -version
    read -p "Enter and continue回车并继续..." y
    fi

else
    exit
fi
done

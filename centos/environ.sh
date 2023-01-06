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
--menu "$version" \
15 50 5 \
"1" "环境search" \
"2" "更新updata" \
"3" "安装install" \
"4" "卸载uninstall" \
3>&1 1>&2 2>&3)
feedback=$?

if [ $feedback = 0 ]
then

#环境
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
   
#更新
    if [ $OPTION = 2 ]
    then yum update -y
    read -p "回车并继续Enter..." y
    fi
    
#安装
    if [ $OPTION = 3 ]
    then        
    #安装zip
    yum install -y unzip zip
    read -p "回车并sshpass继续Enter..." y
    #安装sshpass
    cd "${myadress}"
    wget https://nchc.dl.sourceforge.net/project/sshpass/sshpass/1.06/sshpass-1.06.tar
    tar  zxf sshpass-1.06.tar.gz
    ./configure  --prefix=/usr/local/
    make && make install
    rm -rf sshpass-1.06.tar.gz
    read -p "回车并py继续Enter..." y
    #安装py
    wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
    tar -zxvf Python-3.9.0.tgz
    rm -rf Python-3.9.0.tgz
    cd Python-3.9.0
    ./configure prefix=/usr/local/python3
    make && make install
    ln -s /usr/local/python3/bin/python3.9 /usr/bin/python3
    ln -s /usr/local/python3/bin/pip3.9 /usr/bin/pip3
    read -p "回车并ffmpeg继续Enter..." y
    #安装ffmpeg
    dnf install epel-release
    yum config-manager -set-enabled PowerTools
    yum -y install yum-utils
    yum-config-manager --add-repo=https://negativo17.org/repos/epel-multimedia.repo
    dnf install ffmpeg
    ffmpeg -version
    read -p "回车并继续Enter..." y
    fi

#卸载
    if [ $OPTION = 4 ]
    then 
    read -p "回车并继续Enter..." y
    fi
    
else
    exit
fi
done

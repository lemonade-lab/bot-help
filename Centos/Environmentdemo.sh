#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "initialization failed初始化失败initialization failed"
[ -d ${myadress}"/YunzaiV3" ] || read -p "Enter and continue回车并继续..."
[ -d ${myadress}"/YunzaiV3" ] || exit
cd "${myadress}"


while true
do
OPTION=$(whiptail \
--title "《Help-Environment》" \
--menu "$yourv\n$news" \
15 50 5 \
"1" "查看环境" \
"2" "Redis" \
"3" "zip" \
"4" "sshpass" \
"5" "Python" \
"6" "ffmpeg" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
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
    then
ps -aux | grep redis
read -p "Enter and continue回车并继续..." y
    fi
    if [ $OPTION = 3 ]
    then
yum install -y unzip zip
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
yum config-manager –set-enabled PowerTools
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

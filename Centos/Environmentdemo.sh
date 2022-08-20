#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv

news=""

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV2" ] || mkdir YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || news="#初始化失败"
cd "${myadress}"


while true
do
OPTION=$(whiptail \
--title "Yunzai-Bot-Help" \
--menu "$yourv\n$news" \
15 50 3 \
"1" "查看版本" \
"2" "Redis进程" \
"3" "zip&sshpass" \
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
read -p "回车并继续..." y
    fi
    if [ $OPTION = 2 ]
    then
ps -aux | grep redis
read -p "回车并继续..." y
    fi
    if [ $OPTION = 3 ]
    then
#zip
yum install -y unzip zip
#ssh
cd "${myadress}"
wget https://nchc.dl.sourceforge.net/project/sshpass/sshpass/1.06/sshpass-1.06.tar
tar  zxf sshpass-1.06.tar.gz
./configure  --prefix=/usr/local/
make && make install
rm -rf sshpass-1.06.tar.gz
read -p "回车并继续..." y
    fi
else
    exit
fi
done

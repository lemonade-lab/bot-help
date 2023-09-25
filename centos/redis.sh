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
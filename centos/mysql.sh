yum localinstall https://repo.mysql.com//mysql80-community-release-el7-1.noarch.rpm

rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022

yum install mysql-community-server

systemctl start mysqld # 启动

systemctl enable mysqld # 自启动
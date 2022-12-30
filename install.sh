#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export LANG=zh_CN.UTF-8
function check_sys(){
if [[ -f /etc/redhat-release ]]; then
	release="CentOS"
elif cat /etc/issue | grep -q -E -i "debian"; then
	release="Debian"
elif cat /etc/issue | grep -q -E -i "ubuntu"; then
	release="Ubuntu"
elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"; then
	release="CentOS"
elif cat /proc/version | grep -q -E -i "debian"; then
	release="Debian"
elif cat /proc/version | grep -q -E -i "ubuntu"; then
	release="Ubuntu"
elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"; then
	release="CentOS"
fi
}
check_sys
if [ "${release}" == "CentOS" ]; then
echo -e "CentOS"
./Centos/Centosdemo.sh
fi
if [ "${release}" == "Ubuntu" ]; then
echo -e "Ubuntu"
./Ubuntu/Ubuntudemo.sh
fi
if [ "${release}" == "Debian" ]; then
echo -e "Debian"
fi
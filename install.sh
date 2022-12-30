#!/bin/bash
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
sh /Yunzai-Bot-Help/Centos/Centosdemo.sh
fi
if [ "${release}" == "Ubuntu" ]; then
echo -e "Ubuntu"
sh /Yunzai-Bot-Help/Ubuntu/Ubuntudemo.sh
fi
if [ "${release}" == "Debian" ]; then
echo -e "Debian"
read -p "Debian版本待施工..."
fi
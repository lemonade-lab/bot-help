#!/bin/bash
if [ -f /etc/redhat-release ]; then
                release="centose"
elif cat /etc/issue | grep -q -E -i "debian"; then
                release="debian"
elif cat /etc/issue | grep -q -E -i "ubuntu"; then
                release="ubuntu"
elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"; then
                release="centos"
elif cat /proc/version | grep -q -E -i "debian"; then
                release="debian"
elif cat /proc/version | grep -q -E -i "ubuntu"; then
                release="ubuntu"
elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"; then
                release="centos"
fi
if [ ${release}="centos" ]
then
sh /Yunzai-Bot-Help/Ubuntu/index.sh
fi
if [ ${release}="ubantu" ]
then
sh /Yunzai-Bot-Help/Ubuntu/index.sh
fi
if [ ${release}="debian" ]
then
sh /Yunzai-Bot-Help/debian/index.sh
fi

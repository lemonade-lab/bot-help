#!/bin/bash

# 引入变量
source /bot-help/globals.sh

# 设置 bot-help
bash /bot-help/bin.sh

# 启动

# 检查系统
#if [ -f /etc/redhat-release ]; then
#    release="centose"
#else
#    if grep -q -E -i "debian" /etc/issue; then
#        release="debian"
#    elif grep -q -E -i "ubuntu" /etc/issue; then
#        release="ubuntu"
#    elif grep -q -E -i "centos|red hat|redhat" /etc/issue; then
#        release="centos"
#    fi
#fi

. /etc/os-release
release="$ID"



case $release in
"rhel" | "centos" | "fedora")
    bash "$centosIndex"
    ;;
"ubuntu" | "debian")
    bash "$deubIndex"
    ;;
esac

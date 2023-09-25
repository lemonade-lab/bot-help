#!/bin/bash

# 引入变量
source globals.sh

# 设置bot-help
bash bin.sh

release=""

# 检查系统
if [ -f /etc/redhat-release ]; then
    release="centose"
else
    if grep -q -E -i "debian" /etc/issue; then
        release="debian"
    elif grep -q -E -i "ubuntu" /etc/issue; then
        release="ubuntu"
    elif grep -q -E -i "centos|red hat|redhat" /etc/issue; then
        release="centos"
    fi
fi

case $release in
    "centose" | "centos")
        bash "${AppName}/centos/index.sh"
        ;;
    "ubuntu")
        bash "${AppName}/ubuntu/index.sh"
        ;;
    "debian")
        bash "${AppName}/debian/index.sh"
        ;;
esac
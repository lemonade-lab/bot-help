#!/bin/bash

# 引入变量
source /bot-help/globals.sh

# 设置 bot-help
bash /bot-help/bin.sh

# 启动 检查系统
. /etc/os-release
release=$ID

case $release in
"rhel" | "centos" | "fedora")
    bash "$centosIndex"
    ;;
"ubuntu" | "debian")
    bash "$deubIndex"
    ;;
esac

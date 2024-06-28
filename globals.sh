#!/bin/bash

# 用户
DIRECTORY="/home/lighthouse"

if [ ! -d "$DIRECTORY" ]; then
    echo "$DIRECTORY 开始创建..."
    mkdir -p "$DIRECTORY"
    if [ $? -eq 0 ]; then
        echo "$DIRECTORY 路径创建成功!"
    else
        echo "$DIRECTORY 路径创建失败."
        exit 1
    fi
fi

# 地址
AppName="/bot-help"
readonly AppName

CloneName="bot-help"
readonly  CloneName

# 版本
. /etc/os-release
version="$NAME"
#version=$(cat /etc/redhat-release 2>/dev/null || cat /etc/issue 2>/dev/null | sed 's/\\n//g; s/\\l//g; s/(Core)//g')
readonly version

centos="/bot-help/centos"
readonly centos

centosIndex="$AppName/centos/index.sh"
readonly centosIndex

deub="/bot-help/deub"
readonly deub

deubIndex="$AppName/deub/index.sh"
readonly deubIndex

architecture=""

DetectionArchitecture() {
    case $(arch) in
    x86_64) architecture="x64" ;;
    aarch64) architecture="arm64" ;;
    *)
        read -p "$(echo -e "暂不支持armv71,s390x等架构\n手动安装参考Ubuntu详细\n回车退出")" Enter
        exit
        ;;
    esac
}

DetectionArchitecture


# 版本控制

centosNodeV='16.20.0'
centosRedisV='6.2.13'
centosPcreV='8.45'
centosNginxV='1.24.0'

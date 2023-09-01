#!/bin/bash

appname="/bot-help"
readonly appname

if [ -f /etc/redhat-release ]
then release="centose"
elif cat /etc/issue | grep -q -E -i "debian"
then release="debian"
elif cat /etc/issue | grep -q -E -i "ubuntu"
then release="ubuntu"
elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"
then release="centos"
elif cat /proc/version | grep -q -E -i "debian"
then release="debian"
elif cat /proc/version | grep -q -E -i "ubuntu"
then release="ubuntu"
elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"
then release="centos"
fi


# 检查目录是否存在，不存在则创建
if [ ! -d "/usr/local/bin" ]; then
    sudo mkdir -p /usr/local/bin
fi

# 检查脚本文件是否已经存在内容
if [ ! -s "/usr/local/bin/bot-help" ]; then
    # 写入脚本内容到文件
    sudo tee /usr/local/bin/bot-help >/dev/null <<EOF
#!/bin/bash
/bot-help/install.sh
EOF

    # 设置脚本文件的可执行权限
    sudo chmod +x /usr/local/bin/bot-help
fi

if [ ${release} = "centose" ]
then bash "${appname}/centos/index.sh"
fi

if [ ${release} = "centos" ]
then bash "${appname}/centos/index.sh"
fi

if [ ${release} = "ubuntu" ]
then bash "${appname}/ubuntu/index.sh"
fi

if [ ${release} = "debian" ]
then bash "${appname}/debian/index.sh"
fi

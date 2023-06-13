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

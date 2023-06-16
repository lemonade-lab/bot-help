#!/bin/bash

version=$(cat /etc/redhat-release)
readonly version

myadress="/home/lighthouse"
readonly myadress

#yunzai="${myadress}/centos/Yunzai-Bot"
yunzai="${myadress}/Bot/Miao-Yunzai"
readonly yunzai

yunzaiplugin="${yunzai}/plugins"
readonly yunzaiplugin
yunzaimiao="${yunzai}/plugins/miao-plugin/resources"    
readonly yunzaimiao
yunzaiGuoba="${yunzai}/plugins/Guoba-Plugin/resources"    
readonly yunzaiGuoba
yunzaixiaoyao="${yunzai}/plugins/xiaoyao-cvs-plugin/resources"
readonly yunzaixiaoyao

aaarch(){
	case $(arch) in
		x86_64) aarch="x64";;
		aarch64) aarch="arm64";;
		*)
			read -p "$(echo -e "暂不支持armv71,s390x等架构\n手动安装参考Ubuntu详细\n回车退出")" Enter
			exit;;
	esac
}

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/Bot" ] || mkdir Bot
[ -d ${myadress}"/Bot" ] || exit
cd "${myadress}"

yunzaiverification(){
   [ -d "${yunzaiplugin}" ] || echo "Not installed未安装"
   [ -d "${yunzaiplugin}" ] || read -p "Enter回车并继续..." Enter
   [ -d "${yunzaiplugin}" ] || return "1"
   return "0"
}

while true
do
OPTION=$(whiptail \
--title "《Miaozai-Bot》" \
--menu "$version" \
15 50 5 \
"1" "install快捷安装" \
"2" "startUp启动账号" \
"3" "reLogin重新登录" \
"4" "toUpdate机器更新" \
"5" "unInstall机器卸载" \
3>&1 1>&2 2>&3)

feedback=$?
if [ $feedback = 0 ]
then

#安装
    if [ $OPTION = 1 ]
    then
    if [ $(ls "$myadress" | grep centos ) ]
    then
        cd "$myadress"/centos/Miao-Yunzai && npm run stop
        mv "$myadress"/centos "$myadress"/Bot
        echo "已移动目录并关闭机器人，请重启机器人"
        read -p "Enter回车结束..."
        continue
    fi
    aaarch
    node -v
        if [ $? != 0 ]
        then
	git version
        if [ $? != 0 ]
        then
        yum -y install git
        fi
	wget --version
	if [ $? != 0 ]
	then yum -y install wget
	fi
	wget -P "${myadress}" https://repo.huaweicloud.com/nodejs/v16.20.0/node-v16.20.0-linux-${aarch}.tar.gz
	mkdir /usr/local/node-v16.20.0
	tar -xf "${myadress}"/node-v16.20.0-linux-${aarch}.tar.gz --strip-components 1 -C /usr/local/node-v16.20.0
	echo -e '#node v16.20.0\nexport PATH=/usr/local/node-v16.20.0/bin:$PATH' > /etc/profile.d/node.sh
	chmod +x /etc/profile.d/node.sh
	source /etc/profile.d/node.sh
	ln -sfn /usr/local/node-v16.20.0/bin/* /usr/local/bin
	rm -rf "${myadress}"/node-v16.20.0-linux-${aarch}.tar.gz
        fi

	if [ ! $(strings /usr/lib64/libstdc++.so.6 | grep 'CXXABI_1.3.8') ]
	then
	cd "$myadress"
        git clone https://gitee.com/WinterChocolates/libstdc-.so.6.0.26.git
        mv "$myadress"/libstdc-.so.6.0.26/libstdc++.so.6.0.26 /lib64/
        #cp "$myadress"/libstdc-.so.6.0.26/libstdc++.so.6.0.26 /usr/lib64/
        rm -rf /lib64/libstdc++.so.6
        #rm -rf /usr/lib64/libstdc++.so.6
        ln -s /lib64/libstdc++.so.6.0.26 /lib64/libstdc++.so.6
        #ln -s /usr/lib64/libstdc++.so.6.0.26 /usr/lib64/libstdc++.so.6
        rm -rf "$myadress"/libstdc-.so.6.0.26
	fi
    redis-server -v
        if [ $? != 0 ]
        then
        yum -y install git
	yum -y install epel-release
	sed -e 's!^metalink=!#metalink=!g' \
	-e 's!^#baseurl=!baseurl=!g' \
	-e 's!http://download\.fedoraproject\.org/pub/epel!https://mirrors.tuna.tsinghua.edu.cn/epel!g' \
	-e 's!http://download\.example/pub/epel!https://mirrors.tuna.tsinghua.edu.cn/epel!g' -i /etc/yum.repos.d/epel*.repo
        yum -y install redis
        redis-server --daemonize yes
        systemctl enable redis.service
        fi
    
    ##yunzai
    cd "${myadress}/Bot"
    [ -d "${yunzaiplugin}" ] || git clone --depth=1 https://gitee.com/yoimiya-kokomi/Miao-Yunzai.git

        if [ ! -d "${yunzaiplugin}" ]
        then
        rm -rf "${yunzai}"
        echo "安装失败Installation failed" 
        read -p "Enter回车并继续..." Enter
        break
        fi

    cd "${yunzai}"
    ##miao
    [ -d "${yunzaimiao}" ] || git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/

        if [ ! -d "${yunzaimiao}" ] 
        then 
        rm -rf "${yunzai}/plugins/miao-plugin"
        echo "安装失败Installation failed"
        read -p "Enter回车并继续..." Enter
        break
        fi

    ##guoba
    [ -d "${yunzaiGuoba}" ] || git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin.git ./plugins/Guoba-Plugin/
    
        if [ ! -d "${yunzaiGuoba}" ] 
        then 
        rm -rf "${yunzai}/plugins/Guoba-Plugin"
        echo "安装失败Installation failed"
        read -p "Enter回车并继续..." Enter
        break
        fi
    ##xiaoyao-cvs
    [ -d "${yunzaixiaoyao}" ] || git clone --depth=1 https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
    if [ ! -d "${yunzaixiaoyao}" ]
    then
    rm -rf "${yunzai}/plugins/xiaoyao-cvs-plugin"
    echo "安装失败Installation failed"
    read -p "Enter回车并继续..." Enter
    break
    fi

    ##环境准备
    yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y
    yum install libdrm libgbm libxshmfence -y
    yum install nss -y
    yum update nss -y
    #文字安装
    yum groupinstall fonts -y
    #安装Chromium
    yum -y install chromium


    ##依赖
    npm config set registry https://registry.npmmirror.com
    npm install pnpm -g
    pnpm config set registry https://registry.npmmirror.com
    npm install pm2 -g
    ln -sfn /usr/local/node-v16.20.0/bin/* /usr/local/bin
    pnpm install -P
    pnpm install --filter=guoba-plugin

    #安装Chromium
    #node ./node_modules/puppeteer/install.js

    ##返回
    read -p "安装成功,请启动账号,回车并继续Enter..." Enter
    fi
    
    #启动
    if [ $OPTION = 2 ]
    then yunzaiverification
        if [ $? = "0" ]
        then
	echo
        echo -e "\e[31m 退出请使用Ctrl+C \e[0m"
        echo
        cd "${yunzai}"
        node app.js
	echo -e "\n"
	read -p "退出成功,回车并继续Enter..." Enter
        fi
    fi   

    #登录
    if [ $OPTION = 3 ]
    then yunzaiverification
        if [ $? = "0" ]
        then
        cd "${yunzai}"
        npm run login
        fi
    fi   
    
    #更新
    if [ $OPTION = 4 ]
    then yunzaiverification
        if [ $? = "0" ]
        then
        cd "${yunzai}"
        git pull
        cd "${yunzai}/plugins/miao-plugin"
        git pull
        read -p "更新完成" Enter
        fi
    fi
    
    #卸载
    if [ $OPTION = 5 ]
    then yunzaiverification
        if [ $? = "0" ]
        then
        rm -rf "${yunzai}"
        read -p "卸载完成" Enter
        fi
    fi

    #返回
    cd "${myadress}"
else
    exit
fi
done

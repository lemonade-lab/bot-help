#!/bin/bash

version=$(cat /etc/issue)
readonly version

myadress="/home/lighthouse"
readonly myadress

yunzai="${myadress}/debian/Yunzai-Bot"
readonly yunzai

yunzaiplugin="${yunzai}/plugins"
readonly yunzaiplugin
yunzaimiao="${yunzai}/plugins/miao-plugin/resources"    
readonly yunzaimiao
yunzaiGuoba="${yunzai}/plugins/Guoba-Plugin/resources"    
readonly yunzaiGuoba
yunzaixiaoyao="${yunzai}/plugins/xiaoyao-cvs-plugin/resources"
readonly yunzaixiaoyao

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/debian" ] || mkdir debian
[ -d ${myadress}"/debian" ] || exit
cd "${myadress}"

aaarch(){
	case $(arch) in
		x86_64) aarch="x64";;
		aarch64) aarch="arm64";;
		*)
			read -p "$(echo -e "暂不支持armv71,s390x等架构\n手动安装参考Ubuntu详细\n回车退出")"
			exit;;
	esac
}

yunzaiverification(){
	[ -d "${yunzaiplugin}" ] || echo "Not installed未安装"
	[ -d "${yunzaiplugin}" ] || read -p "Enter回车并继续..." Enter
	[ -d "${yunzaiplugin}" ] || return "1"
	return "0"
}

while true
do
	OPTION=$(whiptail \
		--title "《Yunzai-Bot》" \
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
			aaarch
			node -v
			if [ $? != 0 ]
			then
				wget --version
				if [ $? != 0 ]
				then
					apt install -y wget
				fi
				wget -P "${myadress}" https://repo.huaweicloud.com/nodejs/v17.9.0/node-v17.9.0-linux-${aarch}.tar.gz
				mkdir /usr/local/node-v17.9.0
				tar -xf "${myadress}"/node-v17.9.0-linux-${aarch}.tar.gz --strip-components 1 -C /usr/local/node-v17.9.0
				echo -e '#node v17.9.0\nexport PATH=/usr/local/node-v17.9.0/bin:$PATH' > /etc/profile.d/node.sh
				source /etc/profile
				rm -rf node-v17.9.0-linux-${aarch}.tar.gz
			fi

			redis-server -v
			if [ $? != 0 ]
			then
				apt-get install -y git
				apt-get install -y redis-server
			fi
			git version
			if [ $? != 0 ]
			then
				apt-get install -y git
			fi

			##环境准备
			#文字安装
			apt-get install -y fonts-wqy-microhei
			#安装Chromium
			apt-get install -y chromium chromium-driver

			##yunzai
			cd "${myadress}/debian"
			[ -d "${yunzaiplugin}" ] || git clone --depth=1 https://gitee.com/Le-niao/Yunzai-Bot.git

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


			##依赖
			npm config set registry https://registry.npmmirror.com
			npm install pnpm -g
			pnpm config set registry https://registry.npmmirror.com
			pnpm install -P
			pnpm install --filter=guoba-plugin
			pnpm add image-size -w

			##返回
			read -p "安装成功,请启动账号,回车并继续Enter..." Enter
		fi

		#启动
		if [ $OPTION = 2 ]
		then yunzaiverification
			if [ $? = "0" ]
			then
				redis-server --daemonize yes
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

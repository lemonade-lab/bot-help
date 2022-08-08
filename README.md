# Yunzai-Bot-Help
Yunzai-Bot-help是Linux-Centos系统一键安装Yunzai-BotV2&V3脚本  
## 一、项目介绍
自带环境部署和启动更新停止等行为  
作者测试用的centos8.2系统  
附加脚本IpUpdemo.sh.x为快捷登录服务器脚本  
附加脚本FileUpdemo.sh.x为快捷上传插脚本  
下载至Windows即可使用  
[Window安装YunzaiV2&V3教程](https://b23.tv/uTguBSj)  
## 二、安裝教程
>温聲提示  
>您的服务器需要安装Git  
>才能复制脚本  

`yum -y install git `  

### 1. 获取Root权限
`sudo su root `
### 2. 复制脚本
`git clone https://github.com/ningmengchongshui/Yunzai-Bot-Help.git`  
### 3. 执行脚本
`./Yunzai-Bot-Help/helpdemo.sh.x`  
## 三、功能介绍
* 一键部署基础环境node.js、redis、 git、 Redis开机自启
* 一键安装和卸载V2&V3&miao-plugin
* 一键后台启动和停止机器人
* 一键更新V2&V3&miao-plugin  
* SSH开通助手(为IpUpdemo.sh.x&FileUpdemo.sh.x所需)
* 设置中文语言(设置完成后需重启)
* 服务器重启

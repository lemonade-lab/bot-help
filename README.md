# Yunzai-Bot-Help
Yunzai-Bot-help是Linux-Centos系统一键安装Yunzai-BotV2&V3脚本  
## 一、项目介绍
自带环境部署和启动更新停止等行为  
作者测试用的centos8.2系统  
附加脚本IpUpdemo.sh.x为快捷登录服务器  
附加脚本FileUpdemo.sh.x为快捷上传插件  
下载至Windows使用  
附加脚本Pluginsdemo.sh.x为plugins&js插件安装更新卸载  
附加脚本viocedemo.sh.x为plugins&js语音配置  
[移步Window安装YunzaiV2&V3教程](https://b23.tv/uTguBSj)  
## 二、安裝教程
>温聲提示  
>>您的服务器需要安装Git  
>>>才能复制脚本  

`yum -y install git #安装Git`  

### 1. 获取Root权限  
`sudo su root `
### 2. 复制脚本  
`cd /         #移步最外层目录`  
`git clone https://github.com/ningmengchongshui/Yunzai-Bot-Help.git   #复制`  
### 3. 执行脚本
`cd /        #移步最外层目录`  
`./Yunzai-Bot-Help/helpdemo.sh.x   #启动`  
## 三、功能介绍
* 一键部署基础环境Node.js、Redis、 git、 Redis开机自启
* 一键安装和卸载Yunzai-BotV2&V3&miao-plugin插件
* 一键更新Yunzai-BotV2&V3&miao-plugin 
* 一键前台启动机器人以查看反馈
* 一键后台启动和停止机器人
* 一键修改机器人配置
* 一键初始化机器人配置
* 一键脚本自更新自配置
* 一键重启服务器
* 一键删除喵喵帮助图-底图(删除后背景图将只显示主图)
* SSH开通帮助(IpUpdemo.sh.x&FileUpdemo.sh.x)
* 系统语言帮助(设置中文，修改后需重启)

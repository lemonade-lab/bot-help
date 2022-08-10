# Yunzai-Bot-Help
Yunzai-Bot-help是Linux-Centos系统一键安装Yunzai-BotV2&V3脚本  
## 一、项目介绍
自带环境部署和启动更新停止等行为  
作者测试用的centos8.2系统  
附加脚本IpUpdemo.sh为快捷登录服务器  
附加脚本FileUpdemo.sh为快捷上传插件  
下载至Windows使用  
[移步Window安装YunzaiV2&V3教程|附有Yunzai-Bot常见问题](https://b23.tv/uTguBSj)  
## 二、安裝教程
>温聲提示  
>>您的服务器需要安装Git  
>>才能复制脚本  

`yum -y install git #安装Git`  

### 1. 获取Root权限  
`sudo su root `
### 2. 复制脚本  
`cd /         #移步最外层目录`  
`git clone https://github.com/ningmengchongshui/Yunzai-Bot-Help.git   #复制`  
### 3. 执行脚本
`cd /        #移步最外层目录`  
`./Yunzai-Bot-Help/Centos/Centosdemo.sh.x   #启动`  
## 三、功能介绍
* 一键部署基础环境Node.js、Redis、 git、 Redis开机自启
* 一键安装和卸载Yunzai-BotV2&V3&miao-plugin插件
* 一键更新Yunzai-BotV2&V3&miao-plugin
* 机器人状态控制面板
* 插件管理&扩展功能
* 一键查看运行状态
* 一键修改与删除配置
* 一键脚本自更新自配置
* SSH开通帮助(IpUpdemo.sh&FileUpdemo.sh)
* 系统语言帮助(设置中文，修改后需重启)
## 四、更新记录
* V0.0.0：首发测试，补充更多实用性功能，优化代码逻辑，修复更新功能
* V1.0.0：修改与整合功能列表，优化交互，修复bug若干
* V1.0.1：添加插件管理与扩展功能，优化机器人启动方式
* V1.0.2：新增加pm2运行管理，补充更多插件，优化菜单显示

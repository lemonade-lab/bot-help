# Yunzai-Bot-Help
Yunzai-Bot-help是Linux-Centos系统一键安装Yunzai-BotV2&V3脚本

## 一、项目介绍
拥有一键环境部署和一键安装启动更新停止等实用性功能  
作者测试用的centos8.2系统  
[移步Window安装YunzaiV2&V3教程|附有Yunzai-Bot常见问题](https://b23.tv/uTguBSj)  

## 二、安裝教程
>温聲提示  
>>需要安装Git  
>>才能复制脚本  

`yum -y install git #安装Git`  

### 1. 获取Root权限
`sudo su root #权限` 
执行后会看到左边有root，有即是成功  
### 2. 复制
`cd /         #移步最外层目录`  
`git clone https://github.com/ningmengchongshui/Yunzai-Bot-Help.git   #海外github复制`  
`git clone https://gitee.com/ningmengchongshui/Yunzai-Bot-Help.git   #国内gitee复制`  
推荐用国内的，网速好  
### 3. 运行  
`sh /Yunzai-Bot-Help/Centos/Centosdemo.sh   #启动`

## 三、功能介绍
* 一键部署基础环境与开机自启
* 一键安装启动更新停止
* 机器人状态控制面板
* 插件管理
* 运行管理
* 功能扩展
* SSH开通帮助
* 一键修改与删除配置
* 一键脚本自更新自配置
* 系统语言(可设置中文)

## 四、更新记录
* V0.0.0：首发测试，补充更多实用性功能，优化代码逻辑，修复更新功能
* V1.0.0：修改与整合功能列表，优化交互，修复bug若干
* V1.0.1：添加插件管理与扩展功能，优化机器人启动方式
* V1.0.2：新增加pm2运行管理，补充更多插件，优化菜单显示
* V1.0.3：采用新结构以稳定更新，优化所有菜单，优化所有功能
* V1.1.0：已完善所有和修复已知功能，稳定版

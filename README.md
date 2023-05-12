# Yunzai-Bot-Help   

>Centos&&Ubuntu系统轻量型图形化工具    

UpdateTime:2023/5/12_V1.5 

## 一、安装教程 

#### （1）切换权限

>必须`ROOT`用户

```sh
sudo su root      
```

#### （2）环境准备

>推荐使用Centos7.6

>1.`Centos`系统初始化☞[Centos详细内容](https://gitee.com/ningmengchongshui/yunzai-bot-help/blob/main/centos/README.md)

```sh
yum update -y && yum install git -y    
```

>推荐推荐Ubuntu20.04

>2.`Ubuntu`系统初始化☞[Ubuntu详细内容](https://gitee.com/ningmengchongshui/yunzai-bot-help/blob/main/ubuntu/README.md)  

```sh
apt update -y && apt-get install git -y && apt-get install  whiptail -y
```

#### （3）项目拉取

>克隆启动

```sh
git clone https://gitee.com/three-point-of-water/yunzai-bot-help.git  /yunzai-bot-help && chmod +x /yunzai-bot-help/*/*.sh && sh /yunzai-bot-help/install.sh
```

>日常启动

```sh
sh /yunzai-bot-help/install.sh
```

## 二、安卓搭建

>需要先安装APP应用     

>[☞Termux下载地址](https://github.com/termux/termux-app/releases)    

>选择下载`arm64`版    

>安装proot、git、python

```shell
pkg install proot git python -y
```

>安装系统脚本

```shell
git clone https://gitee.com/Le-niao/termux-install-linux.git
```

>启动系统脚本|选择ubuntu系统

```shell
cd ~/termux-install-linux
python termux-linux-install.py
```

>启动系统

```shell
~/Termux-Linux/Ubuntu/start-ubuntu.sh
```

>启动后已是ROOT用户,无需再切换

## 三、远程连接工具    

> Android：`JuiceSSH`       

> IOS：`Termius`     

> Windows：`MobaXterm`、`Termius`  

## 四、功能介绍    
- [x]  一键安装和部署环境     
- [x] 启动/重启/更新/停止
- [x] 后台运行/重新登录  
- [x] 端口管理(杀进程)    
- [x] SSH开通帮助（远程连接）   
- [x] 系统语言(可设置中文)   
- [x] 桌面安装(入门必备)      

## 五、企鹅讨论    

群名  | 群号  |  群主 
:-----------: | :-----------:  | :-----------:    
Alemon-Bot| [806943302](https://jq.qq.com/?_wv=1027&k=AZ3Iigpq) | 柠檬冲水 


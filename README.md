# Bot-Help

> Centos&&Ubuntu&&debian 系统轻量型图形化工具

UpdateTime:2023/9/26_V2.0

> node/chrome/redis/mysql/nginx

## 一、安装教程

#### （1）切换用户
```sh
sudo su root
```

#### （2）环境准备

> 推荐使用 Centos7.6 系统

> 1.`Centos`系统初始化 ☞[Centos 详细内容](./centos/README.md)


```sh
yum update -y && yum install git -y
```

> 推荐推荐 Ubuntu20.04 系统

> 2.`Ubuntu`系统初始化 ☞[Ubuntu 详细内容](./ubuntu/README.md)

```sh
 apt update -y && apt-get install git whiptail -y
```

#### （3）项目拉取

> 克隆并初次启动

```sh
git clone --depth=1 -b main https://gitee.com/ningmengchongshui/bot-help.git  /bot-help && chmod +x /bot-help/*/*.sh  && sh /bot-help/install.sh
```

> 日常启动

```sh
bot-help
```

#### （4）一条龙指令

> 推荐使用 Centos7.6 系统

```sh
yum update -y && yum install git -y && git clone --depth=1 -b main https://gitee.com/ningmengchongshui/bot-help.git  /bot-help && chmod +x /bot-help/*/*.sh  && sh /bot-help/install.sh
```

> 推荐推荐 Ubuntu20.04 系统

```sh
apt update -y && apt-get install git whiptail -y && git clone --depth=1 -b main https://gitee.com/ningmengchongshui/bot-help.git  /bot-help && chmod +x /bot-help/*/*.sh  && sh /bot-help/install.sh
```

## 二、安卓搭建

> 需要先安装 APP Termux 

> [☞Termux 下载地址](https://github.com/termux/termux-app/releases)

> 选择下载`arm64`版

> 安装 proot、git、python

```sh
pkg install proot git python -y
```

> 安装系统脚本

```sh
git clone --depth=1 https://gitee.com/Le-niao/termux-install-linux.git
```

> 启动系统脚本|选择 ubuntu 系统

```sh
cd ~/termux-install-linux
python termux-linux-install.py
```

> 启动系统

```sh
~/Termux-Linux/Ubuntu/start-ubuntu.sh
```

> 启动后已是 ROOT 用户,无需再切换

## 三、远程连接工具

> Android：`JuiceSSH`

> IOS：`Termius`

> Windows：`MobaXterm`、`Termius`

## 四、功能介绍

- [x] 一键部署环境
- [x] 桌面安装
- [x] 端口管理(杀进程)
- [x] SSH 开通（远程连接）
- [x] 系统语言(可设置中文)


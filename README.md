# bot-help

> Centos&&Ubuntu 系统轻量型图形化工具

UpdateTime:2023/9/1_V1.7

## 一、安装教程

#### （1）切换权限

> 必须`ROOT`用户

```shell
sudo su root
```

#### （2）环境准备

> 推荐使用 Centos7.6 系统

> 1.`Centos`系统初始化 ☞[Centos 详细内容](./centos/README.md)

```shell
yum update -y && yum install git -y
```

> 推荐推荐 Ubuntu20.04 系统

> 2.`Ubuntu`系统初始化 ☞[Ubuntu 详细内容](./ubuntu/README.md)

```shell
apt update -y && apt-get install git whiptail -y
```

#### （3）项目拉取

> 克隆并初次启动

```shell
git clone --depth=1 -b main https://gitee.com/ningmengchongshui/bot-help.git  /bot-help && chmod +x /bot-help/*/*.sh  && sh /bot-help/install.sh
```

> 日常启动

```shell
bot-help
```

## 二、安卓搭建

> 需要先安装 APP Termux 

> [☞Termux 下载地址](https://github.com/termux/termux-app/releases)

> 选择下载`arm64`版

> 安装 proot、git、python

```shell
pkg install proot git python -y
```

> 安装系统脚本

```shell
git clone --depth=1 https://gitee.com/Le-niao/termux-install-linux.git
```

> 启动系统脚本|选择 ubuntu 系统

```shell
cd ~/termux-install-linux
python termux-linux-install.py
```

> 启动系统

```shell
~/Termux-Linux/Ubuntu/start-ubuntu.sh
```

> 启动后已是 ROOT 用户,无需再切换

## 三、远程连接工具

> Android：`JuiceSSH`

> IOS：`Termius`

> Windows：`MobaXterm`、`Termius`

## 四、功能介绍

- [x] 一键安装和部署环境
- [x] 启动/重启/更新/停止
- [x] 后台运行/重新登录
- [x] 端口管理(杀进程)
- [x] SSH 开通（远程连接）
- [x] 系统语言(可设置中文)

## 五、企鹅讨论

|    群名    |                        群号                         |   群主   |
| :--------: | :-------------------------------------------------: | :------: |
| Alemon-Bot | [806943302](https://jq.qq.com/?_wv=1027&k=AZ3Iigpq) | 柠檬冲水 |

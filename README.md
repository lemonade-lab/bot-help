# Visible

> Centos&&Ubuntu&&debian 系统轻量型图形化工具

UpdateTime:2023/9/26_V2.0

> node/chrome/redis/mysql/nginx

## 一、安装教程

#### （1）切换用户
```sh
sudo su root
```

#### （2）环境准备

>  Centos8 

> 1.`Centos`系统初始化 ☞[Centos 详细内容](./centos/README.md)


```sh
yum update -y && yum install git -y
```

>  Ubuntu20.04 

> 2.`Ubuntu`系统初始化 ☞[Ubuntu 详细内容](./ubuntu/README.md)

```sh
 apt update -y && apt-get install git whiptail -y
```

#### （3）项目拉取

> 克隆并初次启动

```sh
git clone --depth=1 -b main https://github.com/lemonade-lab/visible.git  /visible && chmod +x /visible/*/*.sh  && sh /visible/install.sh
```

> 日常启动

```sh
visible
```

## 二、远程连接工具

> Android：`JuiceSSH`

> IOS：`Termius`

> Windows：`MobaXterm`、`Termius`

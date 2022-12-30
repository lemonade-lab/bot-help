# Yunzai-Bot-Help   
>Centos/Ubuntu系统轻量型图形化工具V1.2    
## 一、安装教程
```
sudo su root
```
### 1. 服务器安装
Ubuntu Centos
```shell
curl -o yhelp.sh https://02vps.cn/yhelp.sh && chmod +x yhelp.sh && ./yhelp.sh
```
### 2. Android安装
>[完美搭建视频](https://b23.tv/csz4oAS)         
>[Termux开启SSH](https://www.bilibili.com/read/cv19908310)         
>搭建时更新指令        
```shell
apt update     
```
### 3. 手动安装
#### （一）Centos版  
>安装git    
```
yum -y install git        
```
>拷贝项目    
```
git clone https://gitee.com/ningmengchongshui/Yunzai-Bot-Help.git  /Yunzai-Bot-Help
```
>赋予权限    
```
chmod +x /Yunzai-Bot-Help/Centos/*.sh
```
>运行代码   
```
sh /Yunzai-Bot-Help/Centos/Centosdemo.sh
```
#### （二）Ubuntu版   
>安装whiptail
```
apt-get install -y whiptail  
``` 
>安装git
```
apt-get install git      
```
>拷贝项目    
```shell
git clone https://gitee.com/ningmengchongshui/Yunzai-Bot-Help.git  /Yunzai-Bot-Help
```
>赋予权限     
```shell
chmod +x /Yunzai-Bot-Help/Ubuntu/*.sh
```
>运行代码    
```shell
bash /Yunzai-Bot-Help/Ubuntu/Ubuntudemo.sh
```
>若发现安装进度被卡住后      
>可以重启后继续执行安装
>启动无效就多跑几次安装    
>会自动检索缺失部分      

## 二、SSH远程连接工具    
> Android：JuiceSSH         
> IOS：Termius     
> Windows：MobaXterm汉化、Termius    

## 三、功能介绍    
> * 一键安装和部署环境     
> * 一键（启动/重启/更新/停止）   
> * 后台运行（一建开启与关闭）    
> * SSH开通帮助（远程连接）   
> * 系统语言(可设置中文)   
> * 桌面安装(入门必备)      

## 四、企鹅讨论聚集地      
群名  | 群号  |  群主 
------------- | -------------  | -------------    
| [BotHelp](https://afdian.net/a/WinterChocolates) | 806943302 | [@冬季巧克力](https://gitee.com/djqkl_znje) |  
[爱发电](https://afdian.net/a/WinterChocolates)    

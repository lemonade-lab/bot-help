# yunzai-bot-help   
>Centos/Ubuntu系统轻量型图形化工具V1.3    
## 一、安装教程
#### （一）切换用户
>必须root用户模式
```
sudo su root      
```
#### （二）初始化
>1.centos版初始化
```
yum update -y && yum install git -y    
```
>2.Ubuntu版初始化   
```
apt update -y && apt-get install git -y && apt-get install  whiptail -y
``` 
#### （三）项目
>克隆并启动
```
git clone https://gitee.com/ningmengchongshui/yunzai-bot-help.git  /yunzai-bot-help && chmod +x /yunzai-bot-help/*/*.sh && sh /yunzai-bot-help/install.sh
```
>日常启动
```
sh /yunzai-bot-help/install.sh
```
## 二、手机搭建
[打开Termux下载地址]([https://f-droid.org/packages/com.termux/](https://github.com/termux/termux-app/releases)
>选择下载arm64版
### （1）教程1
>安装proot、git、python
```
pkg install proot git python -y
```
>安装系统脚本
```
git clone https://gitee.com/Le-niao/termux-install-linux.git
```
>启动脚本并回复1安装ubantu系统
```
python ~/termux-install-linux/termux-linux-install.py
```
>启动ubantu系统
```
~/Termux-Linux/Ubuntu/start-ubuntu.sh
```
>步骤回到安装教程二三步即可
### (2)教程2
>安装git
```
pkg install git -y
```
>安装脚本
```
git clone https://gitee.com/ningmengchongshui/yunzai-bot-help.git  ~/yunzai-bot-help && chmod +x ~/yunzai-bot-help/*/*.sh
```
>启动脚本|选择amd64|选择ubuntu系统|选择bionc
```
~/yunzai-bot-help/android.sh
```


## 三、SSH远程连接工具    
> Android：JuiceSSH         
> IOS：Termius     
> Windows：MobaXterm汉化、Termius    

## 四、功能介绍    
> * 一键安装和部署环境     
> * 启动/重启/更新/停止
> * 后台运行/重新登录  
> * 端口管理(杀进程)    
> * SSH开通帮助（远程连接）   
> * 系统语言(可设置中文)   
> * 桌面安装(入门必备)      

## 五、企鹅讨论聚集地      
群名  | 群号  |  群主 
------------- | -------------  | -------------    
| [BotHelp](https://afdian.net/a/WinterChocolates) | 806943302 | [@冬季巧克力](https://gitee.com/djqkl_znje) | 
 
[爱发电](https://afdian.net/a/WinterChocolates)    

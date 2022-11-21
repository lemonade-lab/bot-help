# Yunzai-Bot-Help   
>Centos/Ubuntu系统轻量型图形化工具    
## 一、安装教程
>获取root|已是root用户可不用执
```shell
sudo su root
```
### （一）Centos版     

> 支持Centos 7.6镜像       
> 支持Centos stream 8镜像    
> 支持Centos8.0镜像             
> 支持Centos8.2镜像      

#### 1. 安装git    
```     shell
yum -y install git        
```
#### 2. 拷贝项目    

```shell
git clone https://gitee.com/ningmengchongshui/Yunzai-Bot-Help.git  /Yunzai-Bot-Help
```
#### 3. 赋予权限    
```shell
chmod +x /Yunzai-Bot-Help/Centos/*.sh
```
#### 4. 运行代码   
```shell
sh /Yunzai-Bot-Help/Centos/Centosdemo.sh
```
#### 5. Android安装Centos                 
>B站搜索相关词即可找到专栏教程          

### （二）Ubuntu版    
>推荐Ubuntu18.04镜像       
>推荐Ubuntu20.04镜像        
#### 1. 安装git

```      shell
apt-get install git      
```
#### 2. 拷贝项目    
```shell
git clone https://gitee.com/ningmengchongshui/Yunzai-Bot-Help.git  /Yunzai-Bot-Help
```
#### 3. 赋予权限     
```shell
chmod +x /Yunzai-Bot-Help/Ubuntu/*.sh
```
#### 4. 运行代码    
```shell
bash /Yunzai-Bot-Help/Ubuntu/Ubuntudemo.sh
```
>运行代码时，如直接退出，请输入`apt-get install -y whiptail`
>
>安装进度被锁住可以重启后继续安装       

#### 5. Android安装Ubuntu
>[完美搭建视频](https://b23.tv/csz4oAS)         
>搭建时更新指令        
```shell
apt update     
apt-get install -y whiptail
```
>启动无效就多跑几次安装    
>会自动检索缺失部分      

### （三）SSH远程连接工具    
> Android：JuiceSSH         
> IOS：Termius     
> Windows：Termius、MobaXterm     
> [Termux开启SSH](https://www.bilibili.com/read/cv19908310)

## 二、功能介绍    
> * 一键安装和部署环境     
> * 一键（启动/重启/更新/停止）   
> * 插件管理（开源插件合集）        
> * 后台运行（一建开启与关闭）    
> * 修改与删除配置（快速修改）    
> * 功能扩展（美化与娱乐性）      
> * SSH开通帮助（远程连接）   
> * 系统语言(可设置中文)   
> * 桌面安装(入门必备)      

## 三、更新记录   
> * 2022/8/8 V0.0.0：首发测试、补充功能、优化代码逻辑、修复更新功能    
> * 2022/8/8 V1.0.0：修改与整合菜单、优化菜单交互、修复错误显示    
> * 2022/8/9 V1.0.1：新增插件管理与扩展功能、优化启动方式    
> * 2022/8/10 V1.0.2：新增pm2运行管理、补充新插件、优化菜单    
> * 2022/8/11 V1.0.3：采用新结构以稳定更新、优化菜单、修复错误显示   
> * 2022/8/12 V1.1.0：稳定且完善需求功能（稳定版）    
> * 2022/8/12 V1.1.1：简化代码和添加新插件    
> * 2022/8/13 V1.1.2：新增插件、新增菜单   
> * 2022/8/13 V1.1.3：优化安装    
> * 2022/8/16 V1.1.4：细节修复-稳定版   
> * 2022/8/20 V1.1.5：初步实现图形化展示   
> * 2022/8/22 V1.1.6：Ubuntu系统已基本适配
> * 2022/8/22 V1.2.0：Centos&Ubuntu稳定版  

## 四、企鹅讨论聚集地      

[806943302](https://jq.qq.com/?_wv=1027&k=EFY72UDt)

### 附：【测试版一键安装脚本】

脚本由[妖妖](https://github.com/YAOyao5917)提供

轻量型无图形化脚本

> 测试版适配Ubuntu和CentOS
>
> 测试版适配性:Ubuntu>CentOS
>
> 建议Ubuntu18.04或CentOS7.6

```shell
哪个能用用哪个
curl -o ybot.sh 02vps.cn/ybot.sh && chmod 777 ybot.sh && ./ybot.sh

curl -o ybot.sh 10vps.top/ybot.sh && chmod 777 ybot.sh && ./ybot.sh

# 如显示无curl
## Ubuntu
apt-get install -y curl

## CentOS
yum -y install curl
```


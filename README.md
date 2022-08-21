![IMG_0](https://user-images.githubusercontent.com/110824794/185775123-936ea4cf-4e2d-434a-ab6c-ca11ad06006f.PNG)
![IMG_1](https://user-images.githubusercontent.com/110824794/185775125-069c2327-d968-49de-9c3c-0dc0433cb06e.PNG)
# Yunzai-Bot-Help  
Windows&Linux-Centos/Ubuntu一键安装Yunzai-BotV2&V3图形化系统    
## 一、温聲提示    
>手机能装Centos/Ubuntu       
>代码复制需装Git       

## 二、安裝教程    

### （一）Centos版   
  
#### 1. 安装git    
`sudo su root #获取root权限`     
`yum -y install git #安装Git`   

#### 2. 拷贝项目    
`cd /         #移步最外层目录`   
`git clone https://gitee.com/ningmengchongshui/Yunzai-Bot-Help.git   #复制`   

#### 3. 赋予权限    
`cd /Yunzai-Bot-Help/Centos    #移步代码目录`   
`chmod +x *.sh   #赋予权限`  

#### 4. 运行代码   
`sh /Yunzai-Bot-Help/Centos/Centosdemo.sh   #启动`     


### （二）Ubuntu版    

#### 1. 安装whiptail&git  
`apt-get install whiptail`     
`apt install git`      

#### 2. 拷贝项目    
`cd /         #移步最外层目录`      
`git clone https://gitee.com/ningmengchongshui/Yunzai-Bot-Help.git   #复制`      

#### 3. 赋予权限     
`cd /Yunzai-Bot-Help/Ubuntu   #移步代码目录`     
`chmod +x *.sh   #赋予权限`     

#### 4. 运行代码|测试中...    
`bash /Yunzai-Bot-Help/Ubuntu/Centosdemo.sh   #启动`       

### （三）Windows版|测试中...    

## 三、功能介绍
* 一键部署环境和安装Yunzai-bot&miao-plugin     
* 一键（启动/重启/更新/停止）   
* 插件管理（开源插件合集）      
* 运行管理（V2&V3双开）    
* 功能扩展（美化与娱乐性）   
* SSH开通帮助（远程连接）    
* 系统语言(可设置中文)    
* 一键修改与删除配置（快速修改）    
* 一键脚本自更新自配置（快速更新）    

## 四、更新记录   
* 2022/8/8 V0.0.0：首发测试、补充功能、优化代码逻辑、修复更新功能    
* 2022/8/8 V1.0.0：修改与整合菜单、优化菜单交互、修复错误显示    
* 2022/8/9 V1.0.1：新增插件管理与扩展功能、优化启动方式    
* 2022/8/10 V1.0.2：新增pm2运行管理、补充新插件、优化菜单    
* 2022/8/11 V1.0.3：采用新结构以稳定更新、优化菜单、修复错误显示   
* 2022/8/12 V1.1.0：稳定且完善需求功能（稳定版）    
* 2022/8/12 V1.1.1：简化代码和添加新插件（感谢大佬们开发了新功能）
* 2022/8/13 V1.1.2：新增插件、新增菜单
* 2022/8/13 V1.1.3：新增windows助手与优化安装
* 2022/8/16 V1.1.4：细节修复-稳定版
* 2022/8/20 V1.1.5：初步实现图形化展示，删除Windows助手
* 2022/8/21 V1.2.0：Ubuntu-测试中...
* 2022/8/21 V1.2.0：Windows-测试中...
* 2022/8/21 V1.2.0：Bot-多开-测试中...

## 五、反馈与交流   

企鹅交流群`558505956`    

## 六、联动插件   
修仙管理   
>支持安装、更新、卸载     
>支持存档修改、一键删档      
>[xiuxian-emulator-plugin仓库](https://gitee.com/waterfeet/xiuxian-emulator-plugin)  

## 七、特别赞助   
>脚本作者：[柠檬冲水](https://afdian.net/@ningmengchongshui)       
>插件作者：[水脚脚](https://afdian.net/@waterfeet)  

### （1）国光版教程
>安装proot、git、python
```
pkg install proot git python -y
```
>安装系统脚本
```
git clone https://gitee.com/Le-niao/termux-install-linux.git ~/termux-install-linux
```
>启动系统脚本|选择ubuntu系统
```
cd ~/termux-install-linux
python termux-linux-install.py
```
>启动系统
```
~/Termux-Linux/Ubuntu/start-ubuntu.sh
```
### （2）备用版教程
>安装git
```
pkg install proot git -y
```
>安装脚本
```
git clone https://gitee.com/ningmengchongshui/yunzai-bot-help.git  ~/yunzai-bot-help && chmod +x ~/yunzai-bot-help/android.sh
```
>启动脚本|选择amd64|选择ubuntu系统|选择bionc
```
~/yunzai-bot-help/android.sh
```
>启动系统
```
~/start-ubuntu.sh
```

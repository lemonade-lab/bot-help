## Centos系统文档

|  说明 | 命令行  |
|---|---|
|  查看所有目录 | `ls`  |
|  查看当前地址 | `pwd`  |
|  切换到系统根目录 | `cd /`  |
| **Yunzai**修改文件qq.yqml | `vi qq.yqml`  |
| **Yunzai**查看qq.yqml内容 | `cat qq.yqml`  |
| **Alemon**修改文件config.yaml | `vi config.yaml` |
| **Alemon**查看config.yaml内容 | `cat config.yaml` |

## Yunzai使用

|  介绍 | 指令  |
|---|---|
|  机器人根目录  | `cd /home/lighthouse/ubuntu/Miao-Yunzai` |
|  插件目录 | `cd /home/lighthouse/ubuntu/Miao-Yunzai/plugins` |
|  配置地址 | `cd /home/lighthouse/ubuntu/Miao-Yunzai/config/config` |



## Alemon使用

| 介绍         | 指令                                            |
| ------------ | ----------------------------------------------- |
| 机器人根目录 | `cd /home/lighthouse/ubuntu/alemon-bot`         |
| 插件目录     | `cd /home/lighthouse/ubuntu/alemon-bot/plugins` |
| 配置地址     | `cd /home/lighthouse/ubuntu/alemon-bot/config`  |




##  日常使用
>需要确保数据库启动
```
redis-server --daemonize yes
```
>运行账号`机器人根目录下执行`

```sh
node app.js
```

>后台运行`机器人根目录下执行`

```sh
npm run start
```

> 后台重启`机器人根目录下执行`

```sh
npm run restart
```



## 手动安装

> 安装**git**

```sh
yum -y install git
```

> 安装**nodejs**

```sh
yum install -y nodejs
```

> 安装**npm**

```sh
yum install -y npm
```

> 安装**redis-server**

```sh
yum -y install redis
redis-server --daemonize yes
systemctl enable redis.service
```

> 安装**Yunzai-Bot**

```sh
git clone --depth=1 https://gitee.com/Le-niao/Yunzai-Bot.git
```

> 安装**喵喵** `Yunzai-Bot目录下执行`

```sh
git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
```

> 安装**锅巴** `Yunzai-Bot目录下执行`、`#锅巴登录`可以登录后台管理系统

```shell
git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin.git ./plugins/Guoba-Plugin/
```

>必要环境

```sh
yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y 
yum install libdrm libgbm libxshmfence -y
yum install nss -y
yum update nss -y
```

>chrome浏览器生成`图片`

```sh
node ./node_modules/puppeteer/install.js
```

>文字安装解决`帮助图无文字`

```sh
yum groupinstall fonts -y 
```

>加载依赖

```sh
npm install
npm install image-size
npm install express multer body-parser jsonwebtoken
```



## Alemon安装

> cnpm安装
>

```shell
npm install cnpm -g
```
> 安装git，redis和chromium

```shell
apt-get install -y git redis-server redis chromium-browser
```

> 安装字体 **（可以自行百度导入）**

```shell
apt-get install -y fonts-wqy-microhei
```

> 下载[alemon](https://gitee.com/ningmengchongshui/alemon-bot)

```shell
git clone --depth=1 https://gitee.com/ningmengchongshui/alemon-bot.git
cd alemon-bot
```

> 启动[alemon](https://gitee.com/ningmengchongshui/alemon-bot)

```shell
npm run app
```



##  更多资料

- Yunzai-Bot插件库：[☞Github](https://gitee.com/link?target=https%3A%2F%2Fgithub.com%2FyhArcadia%2FYunzai-Bot-plugins-index)/[☞Gitee](https://gitee.com/yhArcadia/Yunzai-Bot-plugins-index)
- Yunzai-Bot项目库：[☞Github](https://gitee.com/link?target=https%3A%2F%2Fgithub.com%2FLe-niao%2FYunzai-Bot)/[☞Gitee](https://gitee.com/Le-niao/Yunzai-Bot)
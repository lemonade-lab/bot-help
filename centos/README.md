# centos系统文档

> 机器人目录

```sh
cd /home/lighthouse/centos/Yunzai-Bot
```

> 插件目录

```sh
cd /home/lighthouse/centos/Yunzai-Bot/plugins
```

# 手动安装

> 安装**nodejs**以及**npm**

```sh
yum install -y nodejs
yum install -y npm
```

> 安装**redis-server**

```sh
yum -y install redis
redis-server --daemonize yes
systemctl enable redis.service
```

> 安装**git**

```sh
yum -y install git
```

> 安装**Yunzai**

```sh
git clone --depth=1 https://gitee.com/Le-niao/Yunzai-Bot.git
```

> 安装**喵喵** ~~需要在安装Yunzai后在Yunzai对应目录下执行~~

```sh
git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
```

> 安装**锅巴** ~~要求同上~~
>
> > 安装后启动机器人执行#锅巴登录用以获取更多插件

```sh
git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin.git ./plugins/Guoba-Plugin/
```

### 补充关于依赖的下载

```sh
npm install
npm install image-size
npm install express multer body-parser jsonwebtoken
```

> 环境

```sh
yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y 
yum install libdrm libgbm libxshmfence -y
yum install nss -y
yum update nss -y
```

> 如果出现生成的帮助图文字部分为口

```sh
yum groupinstall fonts -y 
```

> 出现缺少chrome实例

```sh
node ./node_modules/puppeteer/install.js
```


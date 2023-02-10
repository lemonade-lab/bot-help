## Ubuntu系统文档


|  说明 | 命令行  |
|---|---|
|  查看所有目录 | `ls`  |
|  查看当前地址 | `pwd`  |
|  切换到系统根目录 | `cd /`  |
|  修改文件qq.yqml | `vi qq.yqml`  |
|  查看qq.yqml内容 | `cat qq.yqml`  |

|  介绍 | 指令  |
|---|---|
|  机器人根目录  | `cd /home/lighthouse/ubuntu/Yunzai-Bot`  |
|  插件目录 | `cd /home/lighthouse/ubuntu/Yunzai-Bot/plugins`  |
|  配置地址 | `cd /home/lighthouse/ubuntu/Yunzai-Bot/config/config`  |


## 日常使用
>需要redis是开启状态
```
redis-server --daemonize yes
```
> 第一次启动 **（根目录下指令）**

```shell
node app.js
```

> 后台启动 **（根目录下指令）**

``` shell
npm run start
```

> 后台重启 **（根目录下指令）**

```shell
npm run restart
```

> 后台关闭 **（根目录下指令）**

```shell
npm run stop
```

## 手动安装

**安装nodejs第一种方法**

安装nodejs

```shell
apt update && apt install -y curl
```

```shell
# nodejs v16.x
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - &&\
apt-get install -y nodejs

# nodejs v18.x
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - &&\
apt-get install -y nodejs
```



**安装nodejs第二种方法**

> 输入arch或者uname -m，查看系统架构

```shell
root@localhost:~# arch
# 输出x86_64 为x64
# 输出aarch64 为arm64
# 其他系统架构请百度在选择安装
```

> 安装nodejs **（版本自行选择，这里为nodejs17.9.0的arm64）**
>
> [官方镜像站](https://nodejs.org/dist/)和[华为云镜像站](https://repo.huaweicloud.com/nodejs/)
>
> 请选择与下面nodejs版本后**linux-系统架构**对应的压缩包，复制链接
>
> 例如x64则是node-v17.9.0-linux-x64.tar.gz

```shell
apt update && apt install -y wget

wget https://repo.huaweicloud.com/nodejs/v17.9.0/node-v17.9.0-linux-arm64.tar.gz

tar -xf node-v17.9.0-linux-${aarch}.tar.gz --strip-components 1 -C /usr/local/node-v17.9.0

echo -e '#node v17.9.0\nexport PATH=/usr/local/node-v17.9.0/bin:$PATH' > /etc/profile.d/node.sh

source /etc/profile
```

> pnpm安装 **（如安装的慢，建议换源）**

```shell
npm install pnpm -g
```


> npm和pnpm换源 **（如为官方服务器，推荐找自己服务商的镜像源）**

```shell
npm config set registry https://registry.npmmirror.com

pnpm config set registry https://registry.npmmirror.com
```

> 安装git，redis和chromium

```shell
apt install -y git redis-server redis chromium-browser
```

> 安装字体 **（可以自行百度导入）**

```shell
apt-get install -y --force-yes --no-install-recommends fonts-wqy-microhei
```

> 下载[云崽](https://gitee.com/Le-niao/Yunzai-Bot)

```shell
git clone --depth=1 https://gitee.com/Le-niao/Yunzai-Bot.git
```

> 安装[喵喵插件](https://gitee.com/yoimiya-kokomi/miao-plugin) **（注意：需要云崽目录里执行）**

```shell
cd Yunzai-Bot
git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
```

> 喵喵插件依赖安装 **（注意：需要云崽目录里执行）**

```shell
pnpm add image-size -w
```

> 安装[锅巴插件](https://gitee.com/guoba-yunzai/guoba-plugin) **（注意：需要云崽目录里执行）**

```shell
cd Yunzai-Bot
git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin.git ./plugins/Guoba-Plugin/
```

> 锅巴插件依赖安装 **（注意：需要云崽目录里执行）**

```shell
pnpm install --filter=guoba-plugin
```


## 附录

### python3.9.0 安装

> **其他版本相同安装方式**

> 因为ubuntu的python3.6系统需要用所以不建议卸载，推荐使用下面的方法 **（想卸载的自行百度）**
>

```shell
rm -rf /usr/bin/python3
rm -rf /usr/bin/pip3
```

> 安装需要用的依赖
>

```shell
apt update && apt install -y wget gcc tar make build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libbz2-dev liblzma-dev sqlite3 libsqlite3-dev tk-dev uuid-dev libgdbm-compat-dev
```

> 官网速度太慢了，这是使用[华为镜像站](https://mirrors.huaweicloud.com/home)的python编译包
>

```shell
# 下载
wget https://repo.huaweicloud.com/python/3.9.0/Python-3.9.0.tgz

# 解压
tar -xf Python-3.9.0.tgz

# 进入目录并编译
cd Python-3.9.0
./configure --prefix=/usr/local/python3
make && make install
```

> 配置系统环境
>

```shell
echo -e '# python3.9.0\nexport PYTHON_HOME=/usr/local/python3\nexport PATH=$PYTHON_HOME/bin:$PATH' >> /etc/profile

source /etc/profile
```

> 查看python配置
>

```shell
python3 --version
pip3 --version
```

> 安装完成后删除压缩包和文件夹

```shell
cd ..
rm -rf Python-3.9.0.tgz
rm -rf Python-3.9.0
```



**PyPI镜像加速站**

> 腾讯云PyPI镜像加速站 **（都可以用）**：http://mirrors.tencent.com/pypi/simple/
>
> 华为云PyPi镜像加速站 **（都可以用）**：https://repo.huaweicloud.com/repository/pypi/simple/
>
> 阿里云PyPI公网镜像加速站 **（服务器用这个）**：https://mirrors.aliyun.com/pypi/simple/
>
> 阿里云PyPI内网镜像加速站 **（termux用这个）**：https://mirrors.cloud.aliyuncs.com/pypi/simple/
>
> 还有其他的大学镜像站，例如：清华，中科大，南大，交大等等

> 配置如下：

```shell
cd ~
mkdir .pip/

# 腾讯云
cat >> .pip/pip.conf <<EOF
[global]
index-url = http://mirrors.tencent.com/pypi/simple
trusted-host = mirrors.tencent.com
EOF

```



### git-2.39.0 安装

**第一种方法**

> termux安装的Ubuntu需要使用该方法需要提前安装software-properties-common才可以使用
>

  ```shell
apt-get install -y software-properties-common && aptget update
  ```

> 安装步骤
>

  ```shell
add-apt-repository ppa:git-core/ppa
apt update && apt install -y git
  ```

  

**第二种方法**

  > 因为Ubuntu能下载到的版本只有2.17，这个版本推荐升级，首先卸载已经安装的git
  >

  ```shell
apt remove -y git
  ```

  > 安装需要的依赖
  >

```shell
  apt update && apt install -y wget gcc make gzip tar wget libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
```

  > 暂且没找到国内源，用的是官方源
  >

  ```shell
# 下载
wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.39.0.tar.xz
  
# 解压
tar -xf git-2.39.0.tar.xz
  
# 进入目录并编译
cd git-2.39.0
./configure --prefix=/usr/local/git
make && make install
  ```

  > 配置git环境（下面方法任选其一）
  >

  ```shell
# 配置系统环境
echo -e '# Git2.39.0\nexport PATH=/usr/local/git/bin:$PATH' >> /etc/profile
source /etc/profile
  
#配置软链接
ln -s /usr/local/git/bin/git /usr/local/bin/git
  ```

  > 查看git版本
  >

  ```shell
git --version
  ```
  > 安装完成后删除压缩包和文件夹

  ```shell
cd ..
rm -rf git-2.39.0.tar.xz
rm -rf git-2.39.0
  ```

##  其他

- Yunzai-Bot插件库：[☞Github](https://gitee.com/link?target=https%3A%2F%2Fgithub.com%2FyhArcadia%2FYunzai-Bot-plugins-index)/[☞Gitee](https://gitee.com/yhArcadia/Yunzai-Bot-plugins-index)
- Yunzai-Bot：[☞Github](https://gitee.com/link?target=https%3A%2F%2Fgithub.com%2FLe-niao%2FYunzai-Bot)/[☞Gitee](https://gitee.com/Le-niao/Yunzai-Bot)

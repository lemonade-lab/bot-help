# Debian系统文档

>机器人目录

```sh
cd /home/lighthouse/debian/Yunzai-Bot
```

>插件目录

```sh
cd /home/lighthouse/ubuntu/debian/plugins
```

# 手动安装

> **测试系统环境debian9.4、debian11.1**

> 安装nodejs和pnpm

```shell
apt update && apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_17.x | bash -
apt install -y nodejs
npm install pnpm -g
```

> pnpm换源 **（建议执行）**

```shell
pnpm config set registry https://registry.npmmirror.com
```

> 安装git，redis和chromium

```shell
apt install -y git redis-server redis chromium chromium-driver
```

> 安装字体 **（可以自行百度导入）**

```shell
apt-get install -y fonts-wqy-microhei
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

# 日常使用

> 第一次启动 **（注意：需要云崽目录里执行）**

```shell
node app
```

> 后台启动 **（注意：需要云崽目录里执行）**

``` shell
npm run start
```

> 后台重启 **（注意：需要云崽目录里执行）**

```shell
npm run restart
```

> 后台关闭 **（注意：需要云崽目录里执行）**

```shell
npm run stop
```

出现版本过低至无法登录

```shell
cd Yunzai-Bot/data/`此处替换为你的机器人qq号`/
vim device-`此处替换为你的机器人qq号`.json
# 修改imei值，建议使用原数字-1的值
# 重新执行上述重启命令
```

## 附录

### python3.9.0 安装

> **其他版本相同安装方式**

**第一种方法**

debian11是可以直接安装python3.9 **（debian9不可以直接安装）**

```shell
apt update && apt install -y python3.9
```

**第二种方法**

> 因为ubuntu的python3.6系统需要用所以不建议卸载，推荐使用下面的方法 **（想卸载的自行百度）**

```shell
rm -rf /usr/bin/python3
rm -rf /usr/bin/pip3
```

> 安装需要用的依赖

```shell
apt update && apt install -y wget gcc tar make build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libbz2-dev liblzma-dev sqlite3 libsqlite3-dev tk-dev uuid-dev libgdbm-compat-dev
```

> 官网速度太慢了，这是使用[华为镜像站](https://mirrors.huaweicloud.com/home)的python编译包

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

```shell
echo -e '# python3.9.0\nexport PYTHON_HOME=/usr/local/python3\nexport PATH=$PYTHON_HOME/bin:$PATH' >> /etc/profile

source /etc/profile
```

> 查看python配置

```shell
python3 --version
pip3 --version
```

> 安装完成后删除压缩包和文件夹

```shell
cd ..
rm -rf Python-3.9.10.tgz
rm -rf Python-3.9.10
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

# 华为云
cat >> .pip/pip.conf <<EOF
[global]
index-url = https://repo.huaweicloud.com/repository/pypi/simple/
trusted-host = repo.huaweicloud.com
timeout = 120
EOF

# 腾讯云
cat >> .pip/pip.conf <<EOF
[global]
index-url = http://mirrors.tencent.com/pypi/simple
trusted-host = mirrors.tencent.com
EOF

```



### git-2.39.0 安装

> **debian9中的git版本为2.11.0，推荐升级**
>
> **debian11中的git版本为2.30.2，可以不升级**

  > 卸载已经安装的git

  ```shell
apt remove -y git
  ```

  > 安装需要的依赖

```shell
  apt update && apt install -y wget gcc make gzip tar wget libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
```

  > 暂且没找到国内源，用的是官方源

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

  ```shell
# 配置系统环境
echo -e '# Git2.39.0\nexport PATH=/usr/local/git/bin:$PATH' >> /etc/profile
source /etc/profile
  
#配置软链接
ln -s /usr/local/git/bin/git /usr/local/bin/git
  ```

  > 查看git版本

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
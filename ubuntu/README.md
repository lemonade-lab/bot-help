# Ubuntu系统文档
>机器人目录
```sh
cd /home/lighthouse/ubuntu/Yunzai-Bot
```
>插件目录
```sh
cd /home/lighthouse/ubuntu/Yunzai-Bot/plugins
```
# 手动安装

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





##  其他

- Yunzai-Bot插件库：[☞Github](https://gitee.com/link?target=https%3A%2F%2Fgithub.com%2FyhArcadia%2FYunzai-Bot-plugins-index)/[☞Gitee](https://gitee.com/yhArcadia/Yunzai-Bot-plugins-index)
- Yunzai-Bot：[☞Github](https://gitee.com/link?target=https%3A%2F%2Fgithub.com%2FLe-niao%2FYunzai-Bot)/[☞Gitee](https://gitee.com/Le-niao/Yunzai-Bot)

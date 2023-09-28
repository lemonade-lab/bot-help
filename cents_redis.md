# 备份
```sh
redis-cli SAVE
```

# 删除
```sh
systemctl stop redis
yum remove redis -y
```

# 下载并编译
```sh
wget http://download.redis.io/releases/redis-6.2.13.tar.gz
```
redis-6.2.13
```sh
tar xzf redis-6.2.13.tar.gz
```
```sh
cd redis-6.2.13
```

```sh
make
make install
```
# 后台启动
```sh
redis-server --daemonize yes
```
# 备份
```
redis-cli SAVE
```

# 删除
```
systemctl stop redis
yum remove redis -y
```

# 下载并编译
```
wget http://download.redis.io/releases/redis-6.2.13.tar.gz
```
redis-6.2.13
```
tar xzf redis-6.2.13.tar.gz
```
```
cd redis-6.2.13
```
```
make
make install
```
# 后台启动
```
redis-server --daemonize yes
```
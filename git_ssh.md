### git配置ssh

配置密钥

```sh
ssh-keygen -t rsa -C "xxx@xxx.com"
```

查看密钥

```sh
cd ~/.ssh  
cat id_rsa.pub
```

### 显示

查看当前分支大小

```sh
git count-objects -vH | grep -E "count|size"
```

查看当前分支所有大小信息

```sh
git count-objects -vH 
```

### 删除
```sh
git rm --cached <flie-name>
```

## 删除记录

```sh
git log --oneline --decorate --graph main
```

```sh
git rebase --onto <last-commit-to-keep> main
```

```sh
git push --force origin main
```

### git配置ssh

配置密钥

```
ssh-keygen -t rsa -C "xxx@xxx.com"
```

查看密钥

```
cd ~/.ssh  
cat id_rsa.pub
```

### 显示

查看当前分支大小

```
git count-objects -vH | grep -E "count|size"
```

查看当前分支所有大小信息

```
git count-objects -vH 
```

### 删除
```
git rm --cached <flie-name>
```

## 删除记录

```
git log --oneline --decorate --graph main
```

```
git rebase --onto <last-commit-to-keep> main
```

```
git push --force origin main
```

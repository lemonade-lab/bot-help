# 检查目录是否存在，不存在则创建
if [ ! -d "/usr/local/bin" ]; then
    sudo mkdir -p /usr/local/bin
fi

# 检查脚本文件是否已经存在内容
if [ ! -s "/usr/local/bin/bot-help" ]; then
    # 写入脚本内容到文件
    sudo tee /usr/local/bin/bot-help >/dev/null <<EOF
#!/bin/bash
/bot-help/install.sh
EOF
    # 设置脚本文件的可执行权限
    sudo chmod +x /usr/local/bin/bot-help
fi

#!/bin/bash

# 源代码文件加载
source /etc/network_turbo

git clone https://github.com/wnlen/clash-for-linux.git

rm -rf clash-for-linux/.env
touch clash-for-linux/.env
file="./clash-for-linux/.env"
echo "export CLASH_URL='https://abc.xhonor.top:9066/v2b/hx/api/v1/client/subscribe?token=081f56a619a159424c321d9120ce7aac'" >> "$file"
echo "export CLASH_SECRET=''" >> "$file"

bash ./clash-for-linux/start.sh
source /etc/profile.d/clash.sh
proxy_on

# 安装Python包
echo "安装Python包:diffusers, timm, accelerate..."
pip install diffusers timm accelerate

wget https://github.com/Y1ZzLu/fast-DiT/releases/download/data/data.zip

echo "脚本执行完成！"
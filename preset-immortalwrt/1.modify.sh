#!/bin/sh

#修改登录IP
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# ==============================================
# 第三方插件源码
# ==============================================

git clone --depth 1 https://github.com/Zxilly/UA2F.git package/UA2F
cd package/UA2F
git checkout 7d42096
cd ../..

# rkp‑ipid照常
git clone --depth 1 https://github.com/CHN-beta/rkp-ipid.git package/rkp-ipid

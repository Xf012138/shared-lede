#!/bin/sh
#修改登录IP
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# ==============================================
# 第三方插件源码
# ==============================================

# 完整克隆（不能使用depth 1，否则无法切换旧提交）
git clone --depth 1 https://github.com/Zxilly/UA2F.git package/UA2F
sed -i '/cmake_policy.*CMP0135/d' package/UA2F/CMakeLists.txt
git clone --depth 1 https://github.com/CHN-beta/rkp-ipid.git package/rkp-ipid

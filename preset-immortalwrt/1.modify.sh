#!/bin/sh

#修改登录IP
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# ============================================
# 第三方插件源码
# ============================================

# UA2F（UA伪装）
git clone https://github.com/EOYOHOO/UA2F.git package/UA2F

# rkp-ipid（IP ID 随机化）
git clone https://github.com/CHN-beta/rkp-ipid.git package/rkp-ipid

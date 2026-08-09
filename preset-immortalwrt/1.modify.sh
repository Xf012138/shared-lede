#!/bin/sh
#修改后台IP按需开启
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
#仅下载rkp‑ipid，UA2F后续路由器装好系统再装
git clone --depth 1 https://github.com/CHN-beta/rkp-ipid.git package/rkp-ipid
# 删除小米3G‑V2设备定义，阻止它编译缺失的dts
sed -i '/xiaomi_mi-router-3g-v2/d' target/linux/ramips/image/mt7621.mk

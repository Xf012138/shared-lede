#!/bin/sh
#修改后台IP按需开启
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
#仅下载rkp-ipid，UA2F后续路由器装好系统再装
git clone --depth 1 https://github.com/CHN-beta/rkp-ipid.git package/rkp-ipid

# ==========只保留CR6608，屏蔽全部mt7621设备定义==========
#1、注释所有设备块
sed -i '/define Device\//,/endef/s/^/#/' target/linux/ramips/image/mt7621.mk
#2、解开小米cr6608注释，启用你唯一需要的机型
sed -i '/define Device\/xiaomi_mi-router-cr6608/,/endef/s/^#//' target/linux/ramips/image/mt7621.mk
sed -i '/TARGET_DEVICES += xiaomi_mi-router-cr6608/s/^#//' target/linux/ramips/image/mt7621.mk

# 修复argon主题 wget‑any 依赖警告
sed -i 's/wget-any/wget/g' package/luci-theme-argon/Makefile

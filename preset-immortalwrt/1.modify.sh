#!/bin/sh
# 移除小米3G‑V2编译选项，规避dts语法报错
sed -i '/CONFIG_TARGET_DEVICE_ramips_mt7621_DEVICE_xiaomi_mi-router-3g-v2=y/d' .config

# 保证只选中小米4A千兆版v2
sed -i 's/# CONFIG_TARGET_DEVICE_ramips_mt7621_DEVICE_xiaomi_mi-router-4a-gigabit-v2 is not set/CONFIG_TARGET_DEVICE_ramips_mt7621_DEVICE_xiaomi_mi-router-4a-gigabit-v2=y/' .config

# 修改后台IP（按需开启）
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 先只加载rkp‑ipid，UA2F后续进系统之后手动安装
git clone --depth 1 https://github.com/CHN-beta/rkp-ipid.git package/rkp-ipid

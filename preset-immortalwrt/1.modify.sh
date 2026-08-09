#!/bin/sh
#修改登录IP
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

#仅下载 rkp‑ipid
git clone --depth 1 https://github.com/CHN-beta/rkp-ipid.git package/rkp-ipid

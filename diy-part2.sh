#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.123.6/g' package/base-files/files/bin/config_generate

#sed -i '1i src-git kiddin9 https://github.com/kiddin9/openwrt-packages' feeds.conf.default

git clone https://github.com/kenzok8/small-package package/small-package

git clone https://github.com/kiddin9/openwrt-packages package/openwrt-packages


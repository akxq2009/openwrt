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
sed -i 's/192.168.1.1/192.168.123.88/g' package/base-files/files/bin/config_generate

#sed -i '1i src-git kiddin9 https://github.com/kiddin9/openwrt-packages' feeds.conf.default

#git clone https://github.com/haiibo/openwrt-packages package/openwrt-packages
git clone https://github.com/kiddin9/openwrt-packages package/openwrt-packages

# 设置首次登录后台密码为空（进入openwrt后自行修改密码）
#sed -i '/CYXluq4wUazHjmCDBCqXF/d' "${ZZZ_PATH}"

# 删除默认防火墙
#sed -i '/to-ports 53/d' "${ZZZ_PATH}"

# 取消路由器每天跑分任务
#sed -i "/exit 0/i\sed -i '/coremark/d' /etc/crontabs/root" "${FIN_PATH}"

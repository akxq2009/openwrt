#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo "src-git helloworld https://github.com/haiibo/openwrt-packages/tree/master/helloworld.git" >> "feeds.conf.default"
echo 'src-git passwall https://github.com/haiibo/openwrt-packages/tree/master/luci-app-passwall.git' >>feeds.conf.default
echo 'src-git passwall2 https://github.com/haiibo/openwrt-packages/tree/master/luci-app-passwall2.git' >>feeds.conf.default


#echo 'src-git haibo https://github.com/haiibo/openwrt-packages' >>feeds.conf.default
#argon主题
rm -rf package/lean/luci-theme-argon/
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon

# 设置首次登录后台密码为空（进入openwrt后自行修改密码）
sed -i '/CYXluq4wUazHjmCDBCqXF/d' "${ZZZ_PATH}"


# 删除默认防火墙
sed -i '/to-ports 53/d' "${ZZZ_PATH}"


# 取消路由器每天跑分任务
sed -i "/exit 0/i\sed -i '/coremark/d' /etc/crontabs/root" "${FIN_PATH}"

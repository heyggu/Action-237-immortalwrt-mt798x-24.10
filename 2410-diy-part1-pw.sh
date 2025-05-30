#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
sed -i '1i src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' feeds.conf.default
sed -i '2i src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
# natmapt
git clone --depth 1 --branch master --single-branch https://github.com/muink/luci-app-natmapt.git package/luci-app-natmapt
git clone --depth 1 --branch master --single-branch https://github.com/muink/openwrt-natmapt.git package/natmapt
git clone --depth 1 --branch master --single-branch https://github.com/muink/openwrt-stuntman.git package/stuntman
# easytier
git clone --depth 1 -b main https://github.com/EasyTier/luci-app-easytier.git package/package-easytier
#tailscal
git clone https://github.com/asvow/luci-app-tailscale.git package/luci-app-tailscale

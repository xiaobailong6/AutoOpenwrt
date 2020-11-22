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
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git https://github.com/cnzd/luci-app-koolproxyR.git package/koolproxyR
sed -i '$a src-git https://github.com/kenzok8/small.git package/small
sed -i '$a src-git https://github.com/kenzok8/openwrt-packages.git package/kenzo
sed -i '$a src-git https://github.com/destan19/OpenAppFilter package/OpenAppFilter
sed -i '$a src-git https://github.com/xiaorouji/openwrt-package/trunk/package/brook package/openwrt-packages/brook
sed -i '$a src-git https://github.com/xiaorouji/openwrt-package/trunk/package/chinadns-ng package/openwrt-packages/chinadns-ng
sed -i '$a src-git https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-go package/openwrt-packages/trojan-go
sed -i '$a src-git https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-plus package/openwrt-packages/trojan-plus
sed -i '$a src-git https://github.com/xiaorouji/openwrt-package/trunk/package/ssocks package/openwrt-packages/ssocks
sed -i '$a src-git https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall package/openwrt-packages/luci-app-passwall
sed -i '$a src-git https://github.com/siropboy/mypackages/trunk/luci-app-autopoweroff package/openwrt-packages/luci-app-autopoweroff
sed -i '$a src-git https://github.com/siropboy/mypackages/trunk/luci-app-control-timewol package/openwrt-packages/luci-app-control-timewol
sed -i '$a src-git https://github.com/binge8/luci-theme-argon-mc.git package/openwrt-packages/luci-theme-argon-mc
sed -i '$a src-git https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/openwrt-packages/luci-theme-opentomcat
sed -i '$a src-git https://github.com/binge8/luci-theme-butongwifi.git package/openwrt-packages/luci-theme-butongwifi

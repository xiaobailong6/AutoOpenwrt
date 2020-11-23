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
#sed -i '$a src-git lede https://github.com/xiaobailong6/lede/openwrt-package' feeds.conf.default

git clone https://github.com/rosywrt/luci-theme-rosy.git package/lean/luci-theme-rosy  #主题-rosy
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/lean/luci-theme-edge  #主题-edge
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/lean/luci-theme-infinityfreedom  #透明主题
git clone -b master https://github.com/vernesong/OpenClash.git package/lean/luci-app-openclash  #openclash出国软件
git clone https://github.com/frainzy1477/luci-app-clash.git package/lean/luci-app-clash  #clash出国软件
git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan  #微信推送
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns  #smartdns DNS加速
git clone https://github.com/garypang13/luci-app-eqos.git package/lean/luci-app-eqos  #内网IP限速工具
#git clone https://github.com/jerrykuku/node-request.git package/lean/node-request  #京东签到依赖
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean/luci-app-jd-dailybonus  #京东签到
#git clone https://github.com/xiaobailong6/openwrt-packages/tree/master/luci-app-passwall package/lean/luci-app-passwall  #passwall出国软件
#git clone https://github.com/xiaobailong6/small package/lean/package  #passwall出国软件配套
#svn co https://github.com/xiaobailong6/openwrt-packages/tree/master/luci-app-passwall package/lean/luci-app-passwall  #passwall出国软件
svn co https://github.com/xiaobailong6/small package/lean/package  #passwall出国软件配套

#svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall package/lean/luci-app-passwall  #passwall出国软件
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package package/lean/package  #passwall出国软件配套
git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff  #关机（增加关机功能）

rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon  #新的argon主题
git clone https://github.com/jerrykuku/luci-app-argon-config package/lean/luci-app-argon-config  #argon主题设置（编译时候选上,在固件的‘系统’里面）

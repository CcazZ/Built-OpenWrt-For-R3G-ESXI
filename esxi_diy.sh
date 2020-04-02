#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
#删除原主题
rm -rf package/lean/luci-theme-argon
#添加新的主题	
git clone https://github.com/sypopo/luci-theme-atmaterial.git package/lean/luci-theme-atmaterial
#取消bootstrap为默认主题	
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
#删除默认密码
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings
#添加AdGuardHome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome
#添加smartdns
git clone https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
#添加openAppFilter
git clone https://github.com/destan19/OpenAppFilter.git package/lean/OpenAppFilter
#添加passwall
git clone https://github.com/hong0980/luci-app-passwall.git package/lean/luci-app-passwall
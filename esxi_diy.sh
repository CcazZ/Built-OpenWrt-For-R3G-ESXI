#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
#ɾ��ԭ����
rm -rf package/lean/luci-theme-argon
#ȡ��bootstrapΪĬ������	
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
#ɾ��Ĭ������
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings

##########lede/package/leanĿ¼�µĲ��##########
cd package/

#���openAppFilter
git clone https://github.com/destan19/OpenAppFilter

##########lede/package/leanĿ¼�µĲ��##########
cd lean/

#����µ�����	
git clone https://github.com/sypopo/luci-theme-atmaterial
#���AdGuardHome
git clone https://github.com/rufengsuixing/luci-app-adguardhome
#���smartdns
git clone https://github.com/pymumu/luci-app-smartdns
#���passwall
git clone https://github.com/hong0980/luci-app-passwall
#open-vm-tools
git clone https://github.com/fangli/openwrt-vm-tools
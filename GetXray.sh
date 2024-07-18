#!/bin/sh
rm -rf /root/bin/xray-linux-amd64
rm -rf /root/bin/xray-linux-arm64
rm -rf /root/bin/geoip.dat
rm -rf /root/bin/geosite.dat

xray_version=`cat xray_version`
echo "xray version: $xray_version"

wget "https://github.com/XTLS/Xray-core/releases/download/${xray_version}/Xray-linux-64.zip"
wget "https://github.com/XTLS/Xray-core/releases/download/${xray_version}/Xray-linux-arm64-v8a.zip"
unzip Xray-linux-64.zip
rm -rf Xray-linux-64.zip geoip.dat geosite.dat README.md LICENSE
mv xray /root/bin/xray-linux-amd64
chmod +x /root/bin/xray-linux-amd64

unzip Xray-linux-arm64-v8a.zip
rm -rf Xray-linux-arm64-v8a.zip geoip.dat geosite.dat README.md LICENSE
mv xray /root/bin/xray-linux-arm64
chmod +x /root/bin/xray-linux-arm64

wget -O geoip.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
wget -O geosite.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
wget -O geoip_IR.dat https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geoip.dat
wget -O geosite_IR.dat https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geosite.dat
wget -O geoip_VN.dat https://github.com/vuong2023/vn-v2ray-rules/releases/latest/download/geoip.dat
wget -O geosite_VN.dat https://github.com/vuong2023/vn-v2ray-rules/releases/latest/download/geosite.dat
mv geoip.dat /root/bin/geoip.dat
mv geosite.dat /root/bin/geosite.dat
mv geoip_IR.dat /root/bin/geoip_IR.dat
mv geosite_IR.dat /root/bin/geosite_IR.dat
mv geoip_VN.dat /root/bin/geoip_VN.dat
mv geosite_VN.dat /root/bin/geosite_VN.dat

#!/bin/sh
rm -rf ./bin/xray-linux-amd64
rm -rf ./bin/xray-linux-arm64

mkdir wgettemp
cd wgettemp
wget "https://github.com/XTLS/Xray-core/releases/download/v1.8.18/Xray-linux-64.zip"
wget "https://github.com/XTLS/Xray-core/releases/download/v1.8.18/Xray-linux-arm64-v8a.zip"
unzip "Xray-linux-64.zip"
rm -f "Xray-linux-64.zip" geoip.dat geosite.dat README.md LICENSE
mv xray ../bin/xray-linux-amd64

unzip "Xray-linux-arm64-v8a.zip"
rm -f "Xray-linux-arm64-v8a.zip" geoip.dat geosite.dat README.md LICENSE
mv xray ../bin/xray-linux-arm64

wget https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
wget https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
wget -O geoip_IR.dat https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geoip.dat
wget -O geosite_IR.dat https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geosite.dat
wget -O geoip_VN.dat https://github.com/vuong2023/vn-v2ray-rules/releases/latest/download/geoip.dat
wget -O geosite_VN.dat https://github.com/vuong2023/vn-v2ray-rules/releases/latest/download/geosite.dat
cd ../
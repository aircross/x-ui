# X-UI
 [![Go Report Card](https://goreportcard.com/badge/github.com/aircross/x-ui)](https://goreportcard.com/report/github.com/aircross/x-ui) [![Docker Pulls](https://img.shields.io/docker/pulls/aircross/x-ui.svg?style=flat-square)](https://img.shields.io/docker/pulls/aircross/x-ui.svg?style=flat-square)
 
简体中文|[ENGLISH](https://github.com/aircross/x-ui/blob/main/README_EN.md)  

> 声明：该项目仅供个人学习、交流，请遵守当地法律法规,勿用于非法用途;请勿用于生产环境  
> 声明：该项目已闭源，介意者请勿使用；如您需要开源代码，请附上您的Github Profile邮箱联系  

## 3X-UI
  如果你需要使用3X-UI，可以点击这里访问：[aircross/3x-ui](https://github.com/aircross/3x-ui)  
   [![Docker Pulls](https://img.shields.io/docker/pulls/aircross/3x-ui.svg?style=flat-square)](https://img.shields.io/docker/pulls/aircross/3x-ui.svg?style=flat-square)


支持单端口多用户、多协议的 xray 面板，究极缝合怪    
通过免费的Telegram bot方便快捷地进行监控、管理你的代理服务  
&#x26A1;`xtls-rprx-vision`与`reality`快速入手请看[这里](https://github.com/aircross/x-ui/wiki/%E8%8A%82%E7%82%B9%E9%85%8D%E7%BD%AE)  
欢迎大家使用并反馈意见或提交Pr,帮助项目更好的改善  
如果您觉得本项目对您有所帮助,不妨给个star:star2:支持我  
或者你恰巧有购买服务器的需求,可以通过文末的赞助部分支持我~ 

# 文档目录  
- [X-UI](#x-ui)
  - [3X-UI](#3x-ui)
- [文档目录](#文档目录)
- [功能介绍](#功能介绍)
- [一键安装](#一键安装)
    - [X-UI](#x-ui-1)
    - [3X-UI](#3x-ui-1)
- [客户端推荐](#客户端推荐)
- [效果预览](#效果预览)
- [快捷方式](#快捷方式)
- [配置要求](#配置要求)
  - [内存](#内存)
  - [OS](#os)
- [变更记录](#变更记录)
- [致谢](#致谢)
- [广告赞助](#广告赞助)
  - [Stargazers over time](#stargazers-over-time)

# 功能介绍

- 系统状态监控
- 支持单端口多用户、多协议，网页可视化操作
- 支持的协议：vmess、vless、trojan、shadowsocks、shadowsocks 2022、dokodemo-door、socks、http
- 支持配置更多传输配置：http、tcp、ws、grpc、kcp、quic
- 流量统计，限制流量，限制到期时间，一键重置与设备监控
- 可自定义 xray 配置模板
- 支持 https 访问面板（自备域名 + ssl 证书）
- 支持一键SSL证书申请且自动续签
- Telegram bot通知、控制功能
- 更多高级配置项，详见面板 

:bulb:具体**使用、配置细节以及问题排查**请点击这里:point_right:[WIKI](https://github.com/aircross/x-ui/wiki):point_left:  
 Specific **Usages、Configurations and Debug** please refer to [WIKI](https://github.com/aircross/x-ui/wiki)    
# 一键安装
在安装前请确保你的系统支持`bash`环境,且系统网络正常  

&#x26A1;从原版升级也可使用该命令，数据不会丢失&#x26A1;

```
bash <(curl -Ls https://raw.githubusercontent.com/aircross/x-ui/master/install.sh)
```    
For English Users,please use the following command to install English supported version:  
```
bash <(curl -Ls https://raw.githubusercontent.com/aircross/x-ui/master/install_en.sh)
```
如需安装指定的版本,可以在上述命令中指定版本号,如指定版本为`0.3.4.4`,安装命令如下：    
```
bash <(curl -Ls https://raw.githubusercontent.com/aircross/x-ui/master/install.sh) 0.3.4.4   
```

##使用 Docker 部署
安装docker

```shell
curl -fsSL https://get.docker.com | sh
```

运行Docker 

### X-UI

```shell
#X-UI
mkdir -p /opt/docker/x-ui
docker run \
    --name x-ui \
    -d \
    --network host \
    --restart=unless-stopped \
    -v /opt/docker/x-ui:/etc/x-ui/ \
    aircross/x-ui:latest
```

### 3X-UI

```shell
#3X-UI
mkdir -p /opt/docker/3x-ui
docker run \
    --name x-ui \
    -d \
    --network host \
    --restart=unless-stopped \
    -v /opt/docker/3x-ui:/etc/x-ui/ \
    aircross/3x-ui:latest
```


# 客户端推荐  

|软件名称|平台|收费/免费|下载地址|
|--------|:-----:|:-----:|:----:|
|v2rayNG|Adnroid|免费|[下载地址](https://github.com/2dust/v2rayNG/releases)<br /><a href="https://play.google.com/store/apps/details?id=com.v2ray.ang"><img alt="Get it on Google Play" src="https://play.google.com/intl/en_us/badges/images/generic/en_badge_web_generic.png" width="165" height="64" /></a>|
|NekoBox|Adnroid|免费|[下载地址](https://github.com/MatsuriDayo/NekoBoxForAndroid/releases)<br />注意：Google Play 版本自 2024 年 5 月起已被第三方控制，为非开源版本，请不要下载。|
|Clash for Android|Adnroid|免费|[下载地址](https://github.com/MetaCubeX/ClashMetaForAndroid/releases)|
||||
|OneClick|iOS|免费|Apple Store|
|Leaf|iOS|免费|Apple Store|
|Shadowrocket|iOS|收费|Apple Store|
|pepi|iOS|收费|Apple Store|
|i2Ray|iOS|收费|Apple Store|
|Kitsunebi|iOS|收费|Apple Store|
|Quantumult|iOS|收费|Apple Store|
||||
|v2rayN|Windows|免费|[下载地址](https://github.com/2dust/v2rayN/releases)|
|NekoRay / NekoBox For PC|Windows|免费|[下载地址](https://github.com/MatsuriDayo/nekoray/releases)|
|Clash for Windows|Windows|免费|[下载地址](https://github.com/Z-Siqi/Clash-for-Windows_Chinese/releases)|
|clashN|Windows|免费|[下载地址](https://github.com/2dust/clashN/releases)|
|Netch|Windows|免费|[下载地址](https://github.com/netchx/netch/releases)|
|Qv2ray|Windows|免费|[下载地址](https://github.com/Qv2ray/Qv2ray/releases)|
||||
|NekoRay|Linux|未知|未知|
|Clash Verge|Linux|未知|未知|
|Qv2ray|Linux|未知|未知|
|V2rayA|Linux|未知|未知|
|ClashX Pro|MacOS|未知|未知|
|Qv2ray|MacOS|未知|未知|
|V2rayX|MacOS|未知|未知|
|V2rayU|MacOS|未知|未知|

# 效果预览  
`面板使用`:  
<details>
<summary><b>点击查看效果预览</b></summary>  
  
![image](https://user-images.githubusercontent.com/38254177/180629631-f76a05c8-ecf0-4685-bbc7-a7058747d213.png)  
![image](https://user-images.githubusercontent.com/38254177/180629662-b7a325fc-1ebb-47c9-992c-1e7c758a326b.png)


 </details>  
 
`Bot使用`:  
<details>
<summary><b>点击查看效果预览</b></summary>  
  
![image](https://user-images.githubusercontent.com/38254177/178551055-893936b7-b75f-4ee8-a773-eee7c6f43f51.png)  
 
</details>  

`流量提醒`:  
<details>
<summary><b>点击查看效果预览</b></summary> 
  
![image](https://user-images.githubusercontent.com/38254177/180039760-dc987a30-e21c-49a3-8e03-19666566a822.png)

</details>  

`SSH提醒`:  
<details>
<summary><b>点击查看效果预览</b></summary> 
  
![image](https://user-images.githubusercontent.com/38254177/180040129-2ec1a7c0-abd3-41dc-aab0-8cd22415c943.png)

</details>  

`限额提醒`:  
<details>
<summary><b>点击查看效果预览</b></summary> 
  
![image](https://user-images.githubusercontent.com/38254177/180040521-af6e9ef8-d7e5-44e8-834e-25b3b8e3e1b5.png)

</details>  

`到期提醒`:  
<details>
<summary><b>点击查看效果预览</b></summary> 
  
![image](https://user-images.githubusercontent.com/38254177/180041690-90ca4b1f-3a2d-470b-bc0c-eca9261a739a.png)

</details>  

`登录提醒`:  
<details>
<summary><b>点击查看效果预览</b></summary> 
  
![image](https://user-images.githubusercontent.com/38254177/180040913-b8bf2fe1-6fc1-43ab-a683-ae23db1866b2.png)  
![image](https://user-images.githubusercontent.com/38254177/180041179-a5f4cd52-a1ba-4aa9-abb2-b94e36722385.png)

</details>  

`用户速览`:  
<details>
<summary><b>点击查看效果预览</b></summary> 
  
![image](https://user-images.githubusercontent.com/38254177/230761101-20431dd7-5bce-489e-9139-0ceb9ab9a2dc.png)

</details>  

`用户查询`:  
<details>
<summary><b>点击查看效果预览</b></summary> 
  
![image](https://user-images.githubusercontent.com/38254177/230761252-c283c02d-82a4-46ce-a180-dfab4048180d.png)

</details>  



# 快捷方式
安装成功后，通过键入`x-ui`进入控制选项菜单，目前菜单内容：
```
  x-ui 面板管理脚本
  0. 退出脚本
————————————————
  1. 安装 x-ui
  2. 更新 x-ui
  3. 卸载 x-ui
————————————————
  4. 重置用户名密码
  5. 重置面板设置
  6. 设置面板端口
  7. 查看当前面板设置
————————————————
  8. 启动 x-ui
  9. 停止 x-ui
  10. 重启 x-ui
  11. 查看 x-ui 状态
  12. 查看 x-ui 日志
————————————————
  13. 设置 x-ui 开机自启
  14. 取消 x-ui 开机自启
————————————————
  15. 一键安装 bbr (最新内核)
  16. 一键申请SSL证书(acme申请)
 
面板状态: 已运行
是否开机自启: 是
xray 状态: 运行

请输入选择 [0-16]: 
```
# 配置要求  
## 内存  
- 128MB minimal/256MB+ recommend  
## OS  
- CentOS 7+
- Ubuntu 16+
- Debian 8+

# 变更记录   
- 2023.07.18：随机生成Reality dest与serverNames,去除微软域名;细化sniffing配置  
- 2023.06.10：开启TLS时自动复用面板证书与域名;增加证书热重载设定;优化设备限制功能  
- 2023.04.09：支持Reality;支持新的telegram bot控制指令  
- 2023.03.05：支持用户到期时间限制;随机用户名、密码与端口生成
- 2023.02.09：支持单端口内用户流量限制与统计；支持VLESS utls配置与分享链接导出  
- 2022.12.07：添加设备并发限制;细化tls配置,支持minVersion、maxVersion与cipherSuites选择    
- 2022.11.14：添加xtls-rprx-vision流控选项;定时自动更新geo与清除日志  
- 2022.10.23：实现全英文支持;增加批量导出分享链接功能；优化页面细节与Telegram通知    
- 2022.08.11：实现Vmess/Vless/Trojan单端口多用户；增加CPU使用超限提醒  
- 2022.07.28：增加acme standalone模式申请证书;增加x-ui自动保活机制;优化编译选项以适配更多系统  
- 2022.07.24：增加自动生成面板根路径，节点流量自动重置功能，设备IP接入变化通知功能
- 2022.07.21：增加节点IP接入变化提醒，Web面板增加停止/重启xray功能，优化部分翻译
- 2022.07.11：增加节点到期提醒、流量预警策略，增加Telegram bot节点复制、获取分享链接等
- 2022.07.03：重构Telegram bot功能，指令控制不再需要键盘输入;增加Trojan底层传输配置
- 2022.06.19：增加Shadowsocs2022新的Cipher，增加节点搜索、一键清除流量功能
- 2022.05.14：增加Telegram bot Command控制功能，支持关闭/开启/删除节点等
- 2022.04.25：增加SSH登录提醒、面板登录提醒
- 2022.04.23：增加更多Telegram bot提醒功能
- 2022.04.16：增加面板设置Telegram bot功能
- 2022.04.12：优化Telegram Bot通知提醒
- 2022.04.06：优化安装/更新流程，增加证书签发功能，添加Telegram bot机器人推送功能

# 致谢

- [vaxilu/x-ui](https://github.com/vaxilu/x-ui)
- [FranzKafkaYu/x-ui](https://github.com/FranzKafkaYu/x-ui)
- [XTLS/Xray-core](https://github.com/XTLS/Xray-core)
- [telegram-bot-api](https://github.com/go-telegram-bot-api/telegram-bot-api)  

# 广告赞助  

如果你觉得本项目对你有用,而且你也恰巧有这方面的需求,你也可以选择通过我的购买链接赞助我  
- [搬瓦工GIA高端线路](https://bandwagonhost.com/aff.php?aff=57739),仅推荐购买GIA套餐      
- [Cloudcone性价比主机提供商](https://app.cloudcone.com/?ref=2227)  
- [Spartan三网4837性价比主机](https://billing.spartanhost.net/aff.php?aff=1156)


## Stargazers over time

[![Stargazers over time](https://starchart.cc/aircross/x-ui.svg)](https://starchart.cc/aircross/x-ui)

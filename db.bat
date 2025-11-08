@echo off
cd /d "%~dp0"

echo 请输入电视IP地址
set /p ip=请输入电视的IP:

echo 正在连接，请稍后
set matchStr=connected
:connect
for /f "tokens=*" %%i in ('%~dp0adb connect %ip%') do @set  result=%%i

echo %result% | findstr %matchStr% >nul && (echo 连接成功) || (echo 连接失败，正在重试
  goto connect)

set installResult=Success

REM :installDangbei
REM echo 当贝桌面3.24破解版安装中，请稍后
REM for /f "tokens=*" %%i in ('%~dp0adb install launcher148.apk') do @set  installMessage=%%i
REM echo 安装信息：%installMessage%
REM echo %installMessage% | findstr %installResult% >nul && (echo 安装成功) || (echo 安装失败，正在重试
  REM goto installDangbei)

echo 正在精简中，耐心等待。。。
echo.


REM 以下是逐行执行的卸载操作（保留所有注释，显示软件名称）

REM 电视活动中心
echo 正在卸载：电视活动中心
%~dp0adb shell pm uninstall --user 0 "com.xm.webcontent"
echo.

REM 搜狗离线语音识别引擎
echo 正在卸载：搜狗离线语音识别引擎
%~dp0adb shell pm uninstall --user 0 "com.sogou.speech.offlineservice"
echo.

REM 天气
echo 正在卸载：天气
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.tweather"
echo.

REM 本地音乐播放器（注释保留，不执行）
REM echo 正在卸载：本地音乐播放器
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.mimusic2"
REM echo.

REM 小米TV播放器（注释保留，不执行）
REM echo 正在卸载：小米TV播放器
REM %~dp0adb shell pm uninstall --user 0 "com.mitv.videoplayer"
REM echo.

REM 下载管理程序
echo 正在卸载：下载管理程序
%~dp0adb shell pm uninstall --user 0 "com.android.providers.downloads"
echo.

REM 用户手册
echo 正在卸载：用户手册
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.handbook"
echo.

REM 证书安装
echo 正在卸载：证书安装
%~dp0adb shell pm uninstall --user 0 "com.android.certinstaller"
echo.

REM wifi认证
echo 正在卸载：wifi认证
%~dp0adb shell pm uninstall --user 0 "com.android.captiveportallogin"
echo.

REM 应用商店内容land
echo 正在卸载：应用商店内容land
%~dp0adb shell pm uninstall --user 0 "com.mitv.appstore.component.land"
echo.

REM 电视管家（注释保留，不执行）
REM echo 正在卸载：电视管家
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.tvmanager"
REM echo.

REM 定时提醒
echo 正在卸载：定时提醒
%~dp0adb shell pm uninstall --user 0 "com.mitv.alarmcenter"
echo.

REM 日历
echo 正在卸载：日历
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.calendar"
echo.

REM 相册
echo 正在卸载：相册
%~dp0adb shell pm uninstall --user 0 "com.mitv.gallery"
echo.

REM 小米服务安全插件
echo 正在卸载：小米服务安全插件
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.gamecenter.sdk.service.mibox"
echo.

REM adcare
echo 正在卸载：adcare
%~dp0adb shell pm uninstall --user 0 "com.mitv.care"
echo.

REM 卡拉OK服务
echo 正在卸载：卡拉OK服务
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.karaoke.service"
echo.

REM MIOTHOST
echo 正在卸载：MIOTHOST
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.miplay"
echo.

REM 游戏中心
echo 正在卸载：游戏中心
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mibox.gamecenter"
echo.

REM 系统更新
echo 正在卸载：系统更新
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.upgrade"
echo.

REM 小米帐号
echo 正在卸载：小米帐号
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.account"
echo.

REM droidlogic系统
echo 正在卸载：droidlogic系统
%~dp0adb shell pm uninstall --user 0 "com.droidlogic"
echo.

REM 小米支付
echo 正在卸载：小米支付
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.payment"
echo.

REM 电视支付
echo 正在卸载：电视支付
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.pay"
echo.

REM 应用更新
echo 正在卸载：应用更新
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.tv.appupgrade"
echo.

REM 电视推送
echo 正在卸载：电视推送
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.tvpush.tvpushservice"
echo.

REM 小米帐号授权
echo 正在卸载：小米帐号授权
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.account.auth"
echo.

REM 统计
echo 正在卸载：统计
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.statistic"
echo.

REM 小米钱包
echo 正在卸载：小米钱包
%~dp0adb shell pm uninstall --user 0 "com.mipay.wallet.tv"
echo.

REM 米家
echo 正在卸载：米家
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.smarthome.tv"
echo.

REM 应用商店
echo 正在卸载：应用商店
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.appstore"
echo.

REM 分析
echo 正在卸载：分析
%~dp0adb shell pm uninstall --user 0 "com.miui.tv.analytics"
echo.

REM 小米商城
echo 正在卸载：小米商城
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.shop"
echo.

REM 设备报告
echo 正在卸载：设备报告
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.devicereport"
echo.

REM 锁屏
echo 正在卸载：锁屏
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mibox.lockscreen"
echo.

REM 小米音响服务
echo 正在卸载：小米音响服务
%~dp0adb shell pm uninstall --user 0 "com.mi.umi"
echo.

REM 音响前端
echo 正在卸载：音响前端
%~dp0adb shell pm uninstall --user 0 "com.mi.umifrontend"
echo.

REM 代理
echo 正在卸载：代理
%~dp0adb shell pm uninstall --user 0 "com.android.proxyhandler"
echo.

REM 广告应用
echo 正在卸载：广告应用
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.advertise"
echo.

REM 一体化位置信息
echo 正在卸载：一体化位置信息
%~dp0adb shell pm uninstall --user 0 "com.android.location.fused"
echo.

REM 录屏
echo 正在卸载：录屏
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.screenrecorder"
echo.

REM 去除开机广告
echo 正在卸载：去除开机广告
%~dp0adb shell pm uninstall --user 0 "com.miui.systemAdSolution"
echo.

REM 时尚画报
echo 正在卸载：时尚画报
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.tv.gallery"
echo.

REM 今日头屏
echo 正在卸载：今日头屏
%~dp0adb shell pm uninstall --user 0 "com.duokan.videodaily"
echo.


REM 不建议删除的应用（全部保留注释，不执行）
REM 智能屏保
REM echo 正在卸载：智能屏保
REM %~dp0adb shell pm uninstall --user 0 "com.mitv.screensaver"
REM echo.

REM 软件包安装程序
REM echo 正在卸载：软件包安装程序
REM %~dp0adb shell pm uninstall --user 0 "com.android.packageinstaller"
REM echo.

REM 搜狗输入法
REM echo 正在卸载：搜狗输入法
REM %~dp0adb shell pm uninstall --user 0 "com.sohu.inputmethod.sogou.tv"
REM echo.

REM 小米电视播放器
REM echo 正在卸载：小米电视播放器
REM %~dp0adb shell pm uninstall --user 0 "com.mitv.mivideoplayer"
REM echo.

REM pacprocessor
REM echo 正在卸载：pacprocessor
REM %~dp0adb shell pm uninstall --user 0 "com.pacprocessor"
REM echo.

REM 高清播放器
REM echo 正在卸载：高清播放器
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.mediaexplorer"
REM echo.

REM 蓝牙共享
REM echo 正在卸载：蓝牙共享
REM %~dp0adb shell pm uninstall --user 0 "com.android.bluetooth"
REM echo.

REM 模拟电视
REM echo 正在卸载：模拟电视
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.tvplayer"
REM echo.

REM upnp
REM echo 正在卸载：upnp
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.upnp"
REM echo.

REM 无线投屏
REM echo 正在卸载：无线投屏
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.smartshare"
REM echo.

REM 米联
REM echo 正在卸载：米联
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.milink.udt"
REM echo.

REM upnpapp
REM echo 正在卸载：upnpapp
REM %~dp0adb shell pm uninstall --user 0 "com.mi.miplay.mitvupnpsink"
REM echo.

REM DLNA连接
REM echo 正在卸载：DLNA连接
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.dlnatvservice"
REM echo.

REM 投屏神器
REM echo 正在卸载：投屏神器
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.assistant.manual"
REM echo.

REM milink服务
REM echo 正在卸载：milink服务
REM %~dp0adb shell pm uninstall --user 0 "com.duokan.airkan.tvbox"
REM echo.

REM AppLinks功能
REM echo 正在卸载：AppLinks功能
REM %~dp0adb shell pm uninstall --user 0 "com.android.statementservice"
REM echo.

REM 桌面
REM echo 正在卸载：桌面
REM %~dp0adb shell pm uninstall --user 0 "com.mitv.tvhome"
REM echo.

REM 无说明未测试（可能为开机广告）
REM echo 正在卸载：mitv.service
REM %~dp0adb shell pm uninstall --user 0 "mitv.service"
REM echo.

REM 无说明未测试
REM echo 正在卸载：com.xiaomi.mitv.service
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.service"
REM echo.

REM 无说明未测试
REM echo 正在卸载：com.mitv.codec.update
REM %~dp0adb shell pm uninstall --user 0 "com.mitv.codec.update"
REM echo.

REM 无说明未测试
REM echo 正在卸载：com.mitv.shoplugin
REM %~dp0adb shell pm uninstall --user 0 "com.mitv.shoplugin"
REM echo.

REM 无说明未测试
REM echo 正在卸载：com.xiaomi.mitv.providers.settings
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.providers.settings"
REM echo.

REM 无说明未测试
REM echo 正在卸载：com.xiaomi.mitv.legal.webview
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.legal.webview"
REM echo.


REM VPN
echo 正在卸载：VPN
%~dp0adb shell pm uninstall --user 0 "com.android.vpndialogs"
echo.

REM 无说明未测试
REM echo 正在卸载：com.xiaomi.mitv.remotecontroller.service
REM %~dp0adb shell pm uninstall --user 0 "com.xiaomi.mitv.remotecontroller.service"
REM echo.

REM 无说明未测试
REM echo 正在卸载：com.gitvdemo.video
REM %~dp0adb shell pm uninstall --user 0 "com.gitvdemo.video"
REM echo.

REM 米家服务
echo 正在卸载：米家服务
%~dp0adb shell pm uninstall --user 0 "com.xiaomi.smarthome.tv.service"
echo.


echo "精简成功，请重启电视！"
@pause

# scrcpy_auto_start
scrcpy 开机自启动 usb/wifi 手机自动投屏 便捷脚本
实现类似华为碰一碰投屏的功能
```
https://github.com/Genymobile/scrcpy/releases
https://github.com/Genymobile/scrcpy/blob/master/README.zh-Hans.md
```

# 使用方法

将 auto-start-usb.vbs 或 auto-start-wifi.vbs 添加到电脑开机自启动

或者电脑开机后双击文件手动启动

# 两种模式 USB投屏 和 WIFI投屏

USB模式下设置脚本开机自启动，当设备（手机）数据线连接电脑时自动投屏。

WIFI模式下设置脚本开机自启动，当设备（手机）连入同一WiFi时电脑自动投屏。

## 1.开发者模式 开启 usb调试

额外选项：

a.usb安装 开启后可拖拽向手机安装apk；

b.usb调试(安全设置) 开启后可以鼠标控制手机（鼠标中键=home键、右键=back键）

![image](https://user-images.githubusercontent.com/26950227/126888531-e45d3e9f-b2f7-4321-9305-2bea24f22c46.png)

## 2.手机授权

![image](https://user-images.githubusercontent.com/26950227/126888596-cd3c5bc0-87bb-4cbe-928f-6e095d76f51b.png)

## 3.当使用无线wifi投屏时 需要首先手机连接WiFi配置静态IP 并在phone-ip.ini中填写配置


![image](https://user-images.githubusercontent.com/26950227/126888514-5fccb0ef-7c9f-4eea-a0c6-5284bd6dcfac.png)


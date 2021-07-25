set ws=WScript.CreateObject("WScript.Shell")
ws.Run "app\auto-wifi.bat",0
'将此vbs加入开机自启动'
'PS：直接bat开机自启动会闪黑屏'

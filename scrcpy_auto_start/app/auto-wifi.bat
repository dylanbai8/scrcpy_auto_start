@echo off
setlocal enabledelayedexpansion
cd /d %~dp0
%1 mshta vbscript:CreateObject("WScript.Shell").Run("%~s0 ::",0,FALSE)(window.close)&&exit

:: 获取audoadb.exe所在目录
set adb-root=%cd%
:: 获取scrcpy所在目录
set scrcpy-root=%cd%\scrcpy\

:: 从phone-ip.ini读取已设置的ip和端口信息
for /f "delims=" %%i in ('type "phone-ip.ini"^| find /i "="') do set %%i

:: 杀死可能存在的audoadb\scrcpy\adb进程 防止重复运行
taskkill /im autoadb.exe /f 1>nul 2>nul
taskkill /im scrcpy.exe /f 1>nul 2>nul
taskkill /im adb.exe /f 1>nul 2>nul

:: 必须先cd到scrcpy目录 否则adb不会关联启动
cd %scrcpy-root%
:: 启动adb 远程设置局域网内所有调试设备的adb端口为预设端口
adb tcpip %your-phone-port%
:: 启动adb 尝试连接预设ip的设备
adb connect %your-phone-ip%:%your-phone-port%
taskkill /im autoadb.exe /f /t 1>nul 2>nul
taskkill /im scrcpy.exe /f /t 1>nul 2>nul
:: 当autoadb检测到有wifi调试设备接入时 自动启动scrcpy.exe
%adb-root%\autoadb.exe %scrcpy-root%\scrcpy.exe -b2M -s %your-phone-ip%:%your-phone-port%

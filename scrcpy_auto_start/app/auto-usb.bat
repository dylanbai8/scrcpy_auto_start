@echo off
cd /d %~dp0
%1 mshta vbscript:CreateObject("WScript.Shell").Run("%~s0 ::",0,FALSE)(window.close)&&exit

:: 获取audoadb.exe所在目录
set adb-root=%cd%
:: 获取scrcpy所在目录
set scrcpy-root=%cd%\scrcpy\

:: 杀死可能存在的audoadb\scrcpy\adb进程 防止重复运行
taskkill /im autoadb.exe /f 1>nul 2>nul
taskkill /im scrcpy.exe /f 1>nul 2>nul
taskkill /im adb.exe /f 1>nul 2>nul

:: 必须先cd到scrcpy目录 否则adb不会关联启动
cd %scrcpy-root%
:: 当autoadb检测到有usb调试设备插入时 自动启动scrcpy.exe
%adb-root%\autoadb.exe %scrcpy-root%\scrcpy.exe

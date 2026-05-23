# 1. 创建 runpy.cmd 到 System32
@'
@echo off
python "%~1"
pause
'@ | Out-File C:\Windows\System32\runpy.cmd -Encoding ASCII
# 2. 关联 .py 文件默认打开方式为 runpy.cmd
New-Item -Path HKCU:\Software\Classes\.py -Force | Out-Null
Set-ItemProperty -Path HKCU:\Software\Classes\.py -Name "(Default)" -Value "Python.File"
New-Item -Path HKCU:\Software\Classes\Python.File\shell\open\command -Force | Out-Null
Set-ItemProperty -Path HKCU:\Software\Classes\Python.File\shell\open\command -Name "(Default)" -Value '"C:\Windows\System32\runpy.cmd" "%1"'
# 刷新文件关联
Start-Process control.exe -ArgumentList "folder,,5"

# 1. Create runpy.cmd in System32
@'
@echo off
python "%~1"
pause
'@ | Out-File C:\Windows\System32\runpy.cmd -Encoding ASCII
# 2. Associate .py files with runpy.cmd
New-Item -Path HKCU:\Software\Classes\.py -Force | Out-Null
Set-ItemProperty -Path HKCU:\Software\Classes\.py -Name "(Default)" -Value "Python.File"
New-Item -Path HKCU:\Software\Classes\Python.File\shell\open\command -Force | Out-Null
Set-ItemProperty -Path HKCU:\Software\Classes\Python.File\shell\open\command -Name "(Default)" -Value '"C:\Windows\System32\runpy.cmd" "%1"'
# Refresh file association
Start-Process control.exe -ArgumentList "folder,,5"

Write-Host ""
Write-Host "========== Done =========="
Write-Host "Press Enter to exit..."
Read-Host

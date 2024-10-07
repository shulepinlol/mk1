@echo off
echo Starting update...
powershell -ExecutionPolicy Bypass -Command "Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/shulepinlol/mk1/master/update.ps1')"
pause
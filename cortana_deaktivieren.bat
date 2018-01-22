@echo off
REM Cortana in Windows 10 deaktivieren
REM # Powershell Abfrage zum Ermitteln des Windows 10 Release
REM #(Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\" -Name ReleaseID).ReleaseId #
REM 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
taskkill /f /IM explorer.exe
start explorer.exe
exit

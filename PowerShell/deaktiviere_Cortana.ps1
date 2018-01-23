# Deaktivieren von Cortana mithilfe der Powershell
# Script muss mit Adminrechten gestartet werden

# Für spätere Abfrage der Windows 10 Versionen, ggf. werden unterschiedliche Lösungen benötigt
# (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\" -Name ReleaseID).ReleaseId

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"

$Name = "AllowCortana"

# Wert 0 = Cortana deaktiviert
# Wert 1 = Cortana aktiviert
$value = "0"

New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType DWORD -Force | Out-Null

# Powershell-Replacement für Batch-Variante: 
# REM taskkill /f /IM explorer.exe
# REM start explorer.exe

Stop-Process -ProcessName explorer -Force
Start-Process -ProcessName explorer 

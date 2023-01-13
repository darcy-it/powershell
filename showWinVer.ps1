#
# file: showWinVer.ps1
# usage: .\showWinVer.ps1
#

[System.Environment]::OSVersion.Version

Get-ComputerInfo | select WindowsProductName, WindowsVersion, OsHardwareAbstractionLayer

(Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ReleaseId

# (Get-WmiObject -class Win32_OperatingSystem).Caption
# (Get-WmiObject -class Win32_OperatingSystem).Caption | select -first 1

systeminfo /fo csv | ConvertFrom-Csv | select OS*, System*, Hotfix* | Format-List


winver

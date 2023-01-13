#
# file: showWinVer.ps1
# usage: .\showWinVer.ps1
#
# Description: Show Windows Version
# url: https://atmarkit.itmedia.co.jp/ait/articles/1707/31/news028.html
# url: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-computerinfo?view=powershell-7.1
#

[System.Environment]::OSVersion.Version

Get-ComputerInfo | select WindowsProductName, WindowsVersion, OsHardwareAbstractionLayer

(Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ReleaseId

systeminfo /fo csv | ConvertFrom-Csv | select OS*, System*, Hotfix* | Format-List

winver

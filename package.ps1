# Powershell 7
$PSVersionTable.PSVersion
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"
dotnet tool update --global PowerShell
$PSVersionTable

Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/download/v1.7.10661/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile "C:\Windows\temp\WinGet.appxbundle"
Add-AppxPackage "C:\Windows\temp\WinGet.appxbundle"


# Ahout de la source azure
winget source add --name winget https://winget.azureedge.net/cache

winget install --id Microsoft.WindowsTerminal
winget install --id Microsoft.VisualStudioCode
winget install --id VideoLAN.VLC
winget install --id 9MSMLRH6LZF3
winget install --id Flameshot.Flameshot
winget install --id XPFPGHZZ8M7MMH
winget install --id dotPDN.PaintDotNet
winget install --id 7zip.7zip
winget install --id ClawsMail.ClawsMail

# Powershell 7
$PSVersionTable.PSVersion
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"
dotnet tool update --global PowerShell
$PSVersionTable

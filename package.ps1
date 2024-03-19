Set-ExecutionPolicy Unrestricted

Get-ExecutionPolicy -List

#Write-Information "Telechargement de winget et de ses dependances..."

#Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile C:\Temp\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
#Add-AppxPackage C:\Temp\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle

# Ajout de la source azure

winget source add --name winget https://winget.azureedge.net/cache

winget install --id Microsoft.WindowsTerminal --accept-source-agreements --silent --accept-package-agreements
winget install --id Microsoft.VisualStudioCode --accept-source-agreements --silent --accept-package-agreements
winget install --id VideoLAN.VLC --accept-source-agreements --silent --accept-package-agreements
winget install --id 9MSMLRH6LZF3 --accept-source-agreements --silent --accept-package-agreements
winget install --id Flameshot.Flameshot --accept-source-agreements --silent --accept-package-agreements
winget install --id XPFPGHZZ8M7MMH --accept-source-agreements --silent --accept-package-agreements
winget install --id dotPDN.PaintDotNet --accept-source-agreements --silent --accept-package-agreements
winget install --id 7zip.7zip --accept-source-agreements --silent --accept-package-agreements
winget install --id ClawsMail.ClawsMail --accept-source-agreements --silent --accept-package-agreements


# Powershell 7
#$PSVersionTable.PSVersion
#iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"
#dotnet tool update --global PowerShell
#$PSVersionTable

$AppsList = "Microsoft.MicrosoftOfficeHub", # Get Office
"Microsoft.SkypeApp", # Get Skype
"microsoft.windowscommunicationsapps", # Mail & Calendar
"Microsoft.People", # People
"Microsoft.CommsPhone", # Phone
"Microsoft.WindowsPhone", # Phone Companion
"Microsoft.Messaging", # Messaging & Skype
"Microsoft.Reader" # Microsoft Reader
"Microsoft.WindowsCamera" # Camera App
"Microsoft.OneConnect" # Microsoft OneConnect
"Microsoft.Office.OneNote" # Microsoft OneNote
"Microsoft.WindowsStore" # Store App
"Microsoft.XboxGameOverlay" # Microsoft Xbox Game Overlay
"Microsoft.MSPaint" # Microsoft Paint 
"Microsoft.Windows.ContentDeliveryManager" # Windows Spotlight & Dynamic Content
"Microsoft.WindowsSoundRecorder" # Microsoft Sound Recorder
"Microsoft.BingWeather" # Bing Weather App
"Microsoft.Advertising.Xaml" # Microsoft Advertisement App
"Microsoft.ZuneMusic" # Music App
"Microsoft.WindowsCalculator" # Calculator App
"Microsoft.WindowsAlarms" # Alarms App
"Microsoft.Microsoft3DViewer" # Microsoft 3D Viewer
"Microsoft.ZuneVideo" # Video App
"Microsoft.WindowsFeedbackHub" # Feedback App
"Microsoft.StorePurchaseApp" # Microsoft Store Purchase
"Microsoft.MicrosoftStickyNotes" # Microsoft Sticky Notes
"Microsoft.Wallet" # Microsoft Wallet
"Microsoft.MicrosoftEdge" # Microsoft Edge
"Microsoft.Windows.Cortana" # Cortana App
"*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
        "*Clipchamp.Clipchamp*"
        "*Dolby*"
        "*Duolingo-LearnLanguagesforFree*"
        "*Facebook*"
        "*Flipboard*"
        "*HULULLC.HULUPLUS*"
        "*Microsoft.3DBuilder*"
        "*Microsoft.549981C3F5F10*"   #Cortana app
        "*Microsoft.Asphalt8Airborne*"
        "*Microsoft.BingFinance*"
        "*Microsoft.BingNews*"
        "*Microsoft.BingSports*"
        "*Microsoft.BingTranslator*"
        "*Microsoft.BingWeather*"
        "*Microsoft.GetHelp*"
        "*Microsoft.Getstarted*"   # Cannot be uninstalled in Windows 11
        "*Microsoft.Messaging*"
        "*Microsoft.Microsoft3DViewer*"
        "*Microsoft.MicrosoftOfficeHub*"
        "*Microsoft.MicrosoftSolitaireCollection*"
        "*Microsoft.MicrosoftStickyNotes*"
        "*Microsoft.MixedReality.Portal*"
        "*Microsoft.NetworkSpeedTest*"
        "*Microsoft.News*"
        "*Microsoft.Office.OneNote*"
        "*Microsoft.Office.Sway*"
        "*Microsoft.OneConnect*"
        "*Microsoft.Print3D*"
        "*Microsoft.RemoteDesktop*"
        "*Microsoft.SkypeApp*"
        "*Microsoft.Todos*"
        "*Microsoft.WindowsAlarms*"
        "*Microsoft.WindowsFeedbackHub*"
        "*Microsoft.WindowsMaps*"
        "*Microsoft.WindowsSoundRecorder*"
        "*Microsoft.ZuneMusic*"
        "*Microsoft.ZuneVideo*"
        "*PandoraMediaInc*"
        "*PICSART-PHOTOSTUDIO*"
        "*Royal Revolt*"
        "*Speed Test*"
        "*Spotify*"
        "*Twitter*"
        "*Wunderlist*"
        "*king.com.BubbleWitch3Saga*"
        "*king.com.CandyCrushSaga*"
        "*king.com.CandyCrushSodaSaga*"

ForEach ($App in $AppsList)
{
$Packages = Get-AppxPackage | Where-Object {$_.Name -eq $App}
if ($Packages -ne $null)
{
"Removing Appx Package: $App"
foreach ($Package in $Packages) { Remove-AppxPackage -package $Package.PackageFullName }
}
else { "Unable to find package: $App" }

$ProvisionedPackage = Get-AppxProvisionedPackage -online | Where-Object {$_.displayName -eq $App}
if ($ProvisionedPackage -ne $null)
{
"Removing Appx Provisioned Package: $App"
remove-AppxProvisionedPackage -online -packagename $ProvisionedPackage.PackageName
}
else { "Unable to find provisioned package: $App" }
}


# Powershell 7
$PSVersionTable.PSVersion
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"
dotnet tool update --global PowerShell
$PSVersionTable

Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/download/v1.7.10661/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile "C:\TEMP\WinGet.appxbundle"
Add-AppxPackage "C:\TEMP\WinGet.appxbundle"


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


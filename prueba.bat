@echo off
title OPTI J

:page1
cls
echo by Juane11-12
echo ===============
echo ----OPTI J----
echo ===============
echo 1-deshabilitar servicios inecesarios
echo 2-potenciar 2 nucelos
echo 3-deshabilitar transparenica
echo 4-orrar basura de disco
echo 0-menu2
echo.
set /p choice=Seleccione una opcion y presione enter:

if "%choice%"=="1" goto services
if "%choice%"=="2" goto regaa
if "%choice%"=="3" goto regaa2
if "%choice%"=="4" goto disc
if "%choice%"=="0" goto page2

:services
cls
for %%s in ("BITS" "TrustedInstaller" "upnphost" "wuauserv" "TapiSrv" "Spooler" "MapsBroker" "AssignedAccessManagerSvc" "PeerDistSvc" "diagsvc" "DialogBlockingService" "DiagTrack" "Fax" "lfsvc" "GraphicsPerfSvc" "autotimesvc" "WdiSystemHost" "WdiServiceHost" "AxInstSV" "XblGameSave" "MsKeyboardFilter" "CscService" "ssh-agent" "Wecsvc" "RemoteRegistry" "SensorService" "PcaSvc" "WbioSrvc" "BDESVC" "WinDefend" "FontCache" "bthserv" "DPS" "AJRouter" "WdNisSvc" "TabletInputService" "XboxNetApiSvc" "SecurityHealthService" "SensrSvc" "NetTcpPortSharing" "WMPNetworkSvc" "wisvc" "WerSvc" "Sense" "diagnosticshub.standardcollector.service" "shpamsvc" "OneSyncSvc_33085" "SysMain" "RpcLocator" "WSearch" "XboxGipSvc" "tzautoupdate" "XblAuthManager" "vmicshutdown" "BTAGService" "vmictimesync" "TroubleshootingSvc" "FrameServer" "PhoneSvc") do (
	sc stop %%s
	sc config %%s start= disabled
)
pause
goto page1

:regaa
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\943c8cb6-6f93-4227-ad87-e9a3feec08d1" /v Attributes /t REG_DWORD /d 1 /f
reg add	"HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v AllowAutoGameMode /t REG_DWORD /d 0 /f
reg add	"HKEY_CURRENT_USER\Software\Microsoft\Windows Defender Security Center\Account protection" /v AccountProtection_MicrosoftAccount_Verified /t REG_DWORD /d 0 /f
reg add	"HKEY_CURRENT_USER\Software\Microsoft\Windows Defender Security Center\Account protection" /v DisableDynamiclockNotifications /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows Defender Security Center\Account protection" /v DisableNotifications /t REG_DWORD /d 0 /f
reg add	"HKEY_CURRENT_USER\Software\Microsoft\Windows Defender Security Center\Account protection" /v DisableWindowsHelloNotifications /t REG_DWORD /d 0 /f
pause
goto page1

:regaa2
cls
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
pause
goto page1

:disc
cls
cleanmgr /d C: /sageset:1
cleanmgr /d C: /sagerun:1
pause
goto page1

:page2
cls
echo ================
echo ----OPTI J----
echo ---PAGINA 2---
echo ================
echo 1-borrar temps
echo 0- pagina1
set /p choice=selecione una opcion y precione enter:

if "%choice%"=="1" goto temps
if "%choice%"=="1" goto page1
goto page2

:temps
cls
del /s /f /q "%temp%\*.*"
rd /s /q "%temp%\*.*"
md "%temp%"
del /s /f /q "C:\Windows\Temp\*.*"
rd /s /q "C:\Windows\Temp\*.*"
md "C:\Windows\Temp\*.*"
goto page2
pause
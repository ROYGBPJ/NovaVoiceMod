@echo off
setlocal enabledelayedexpansion

set SYSVAD_ARG=%1
if "%SYSVAD_ARG%"=="" set SYSVAD_ARG=false
if /i "%SYSVAD_ARG%"=="true" set SYSVAD_ARG=true
if /i "%SYSVAD_ARG%"=="false" set SYSVAD_ARG=false

SET DEVICE_NAME="Voicemod Virtual"
IF "%SYSVAD_ARG%"=="true" SET DEVICE_NAME="(Voicemod)"

SET ERROR_CODE=0,1003
SET VM_DEV_MIC_ID=
FOR /F %%I IN ('AudioEndPointTool.exe get --name=%DEVICE_NAME% --flow=Capture --format=Raw --fields=ID') DO SET "VM_DEV_MIC_ID=%%I"
IF NOT "%VM_DEV_MIC_ID%"=="" (
	AudioEndPointTool.exe setvisibility --id="%VM_DEV_MIC_ID%" --visible=false
	>%temp%\AudioEndPointTool_COMM.err echo !ERROR_CODE!
	set ERROR_CODE=!ERROR_CODE!,%errorlevel%
)

>%temp%\disabledrv.err echo !ERROR_CODE!

SET ERROR_CODE=0,1003
SET VM_DEV_MIC_ID=
FOR /F %%I IN ('AudioEndPointTool.exe get --name=%DEVICE_NAME% --flow=Render --format=Raw --fields=ID') DO SET "VM_DEV_MIC_ID=%%I"
IF NOT "%VM_DEV_MIC_ID%"=="" (
	AudioEndPointTool.exe setvisibility --id="%VM_DEV_MIC_ID%" --visible=false
	>%temp%\AudioEndPointTool_COMM.err echo !ERROR_CODE!
	set ERROR_CODE=!ERROR_CODE!,%errorlevel%
)

>%temp%\disabledrv.err echo !ERROR_CODE!


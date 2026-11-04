@echo off

set SYSVAD_ARG=%1
if "%SYSVAD_ARG%"=="" set SYSVAD_ARG=false
if /i "%SYSVAD_ARG%"=="true" set SYSVAD_ARG=true
if /i "%SYSVAD_ARG%"=="false" set SYSVAD_ARG=false

REM Disable driver first
call disableDrv.bat %SYSVAD_ARG%

set LOGFILE=uninstalldriver.log
set /A "index=0"
set /A "count=15"

:loop
REM START BY FINDING THE OEM INF FILE
setlocal EnableDelayedExpansion
SET OEM_FILE=
set oemdata="voicemodcon.exe dp_enum"
FOR /F "eol=. tokens=*" %%a IN ( '%oemdata%' ) DO (
    set line=%%a
    if "%SYSVAD_ARG%"=="true" (
        set ourline=!line:Voicemod S.L.=!
        if not !line!==!ourline! (
            SET OEM_FILE=!prev_line!
        )
    ) else (
        set ourline=!line:Voicemod=!
        set sysvadline=!line:Voicemod S.L.=!
        if not !line!==!ourline! if !line!==!sysvadline! (
            SET OEM_FILE=!prev_line!
        )
    )
    SET prev_line=%%a
)
echo Installed OEM file found as: !OEM_FILE! >>%LOGFILE%
setlocal DisableDelayedExpansion

IF "%OEM_FILE%" == "" (
    echo Could not locate OEM file installed. No INF to remove. >>%LOGFILE%
    goto :success
)

REM REMOVE THE DEVICE
if "%SYSVAD_ARG%"=="true" (
    voicemodcon.exe remove ROOT\voicemodvad
) else (
    voicemodcon.exe remove *VMDriver
)
if NOT %errorlevel% == 0 (
    echo Can not remove Virtual device, error %errorlevel% >>%LOGFILE%
    exit /b %errorlevel%
)
echo Virtual device successfully uninstalled from the system >>%LOGFILE%

voicemodcon.exe dp_delete %OEM_FILE%
if NOT %errorlevel% == 0 (
    echo Can not delete the inf file named %OEM_FILE% from DriverStore, error %errorlevel% >>%LOGFILE%
    exit /b %errorlevel%
)
echo OEM file %OEM_FILE% successfully deleted from the DriverStore >>%LOGFILE%

set /A "index=index + 1"
if %index% geq %count% (
  echo Maximum index reached >>%LOGFILE%
  goto :success
)
echo Check for another stored Voicemod driver >>%LOGFILE%
goto :loop

:success
echo Success >>%LOGFILE%
exit /b 0

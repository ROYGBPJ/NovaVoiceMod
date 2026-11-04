@echo off
cd /D "%~dp0"

set SYSVAD_ARG=%1
if "%SYSVAD_ARG%"=="" set SYSVAD_ARG=false
if /i "%SYSVAD_ARG%"=="true" set SYSVAD_ARG=true
if /i "%SYSVAD_ARG%"=="false" set SYSVAD_ARG=false

%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "Start-Process 'setupDrvAdmin.bat' -ArgumentList '%SYSVAD_ARG%' -Verb runAs -WindowStyle Hidden -Wait"

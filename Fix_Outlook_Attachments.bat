@echo off

set AppPath=""
for /f "tokens=2*" %%a in ('REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Office\14.0\Outlook\Security" /v "OutlookSecureTempFolder"') do set "AppPath=%%~b"
if not "%AppPath%"=="""" (
	cd /d %AppPath%
	del /F /Q *
)

set AppPath=""
for /f "tokens=2*" %%a in ('REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Outlook\Security" /v "OutlookSecureTempFolder"') do set "AppPath=%%~b"
if not "%AppPath%"=="""" (
	cd /d %AppPath%
	del /F /Q *
)
@echo off
if "%1" == "run" (
	chr.exe "%2"
) else if "%1" == "version" (
	echo Chromium v1.0.0
) else if "%1" == "" (
	echo. Chromium Cmd Usage
	echo.  chromium command [args]
	echo.
	echo. Where command can be
	echo.  run [2 args]: runs the first arg.
	echo.  version [0 args]: prints the current version.
)
exit /b
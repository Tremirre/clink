:: Get current directory
@echo off
rem Get the current directory
set "CURRENT_DIR=%CD%"

rem Check if the current directory is HOME
if "%CURRENT_DIR%" NEQ "%HOMEDRIVE%%HOMEPATH%" (
    exit /b
)

rem Check if PURE_CWD environment variable is set
set "LAST_DIR_FILE=%LOCALAPPDATA%\clink\_last_dir.txt"

if exist "%LAST_DIR_FILE%" (
    echo Reading last directory from %LAST_DIR_FILE%

    for /f "delims=" %%i in ('type "%LAST_DIR_FILE%"') do (
        echo Changing directory to %%i
        cd /d "%%i"
    )
)

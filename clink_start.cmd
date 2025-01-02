:: Get current directory
@echo off
rem Get the current directory
set "CURRENT_DIR=%CD%"

rem Check if the current directory is HOME
if "%CURRENT_DIR%" NEQ "%HOMEDRIVE%%HOMEPATH%" (
    exit /b
)

rem Check if PURE_CWD environment variable is set
if defined PURE_CWD (
    rem Change to the directory specified in PURE_CWD
    cd /d "%PURE_CWD%"
    echo Changed to directory: %PURE_CWD%
) else (
    echo PURE_CWD is not set. Staying in the current directory.
)

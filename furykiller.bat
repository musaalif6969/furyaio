@echo off
:: Check for administrative privileges
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system" && (
    goto :runScript
) || (
    echo You need to run this script with administrative privileges.
    echo Please right-click on the script and select "Run as administrator."
    pause
    exit /b
)

:runScript
taskkill /F /IM Fury_BP.vmp.exe
cls
exit

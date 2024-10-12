@echo off
chcp 65001 >nul
:banner
echo.
echo.
echo.                                       ██╗   ██╗██╗   ██╗███╗   ██╗ ██████╗ 
echo.                                       ╚██╗ ██╔╝██║   ██║████╗  ██║██╔════╝ 
echo.                                        ╚████╔╝ ██║   ██║██╔██╗ ██║██║  ███╗ PINGER
echo.                                         ╚██╔╝  ██║   ██║██║╚██╗██║██║   ██║
echo.                                          ██║   ╚██████╔╝██║ ╚████║╚██████╔╝
echo.                                          ╚═╝    ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝
echo.
set /p target="Enter the IP address or hostname to ping: "
:loop
ping -n 1 %target%
timeout /t 1 > nul
goto loop
@echo off
title yung MultiTool - by yung
chcp 65001 >nul
cd files
color 5
:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m        ╔═(1) pinger [0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══(2) ddoser [0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═══(3) IPgeo [0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╚╦═══(4) Trace DNS[0m 
echo [38;2;255;255;0m         ║[0m  
set /p input=.%BS% [38;2;255;255;0m        ╚══════^>[0m  
if /I %input% EQU 1 start pinger.bat
if /I %input% EQU 2 start ddoser.bat
if /I %input% EQU 3 start ipgeo.bat
if /I %input% EQU 4 start Tracedns.bat
cls
goto start

:banner
echo.
echo.
echo.                                       ██╗   ██╗██╗   ██╗███╗   ██╗ ██████╗ 
echo.                                       ╚██╗ ██╔╝██║   ██║████╗  ██║██╔════╝ 
echo.                                        ╚████╔╝ ██║   ██║██╔██╗ ██║██║  ███╗
echo.                                         ╚██╔╝  ██║   ██║██║╚██╗██║██║   ██║
echo.                                          ██║   ╚██████╔╝██║ ╚████║╚██████╔╝
echo.                                          ╚═╝    ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ some random stuff
echo.
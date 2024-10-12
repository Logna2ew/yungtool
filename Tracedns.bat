@echo off
set /p domain="Enter the domain to trace: "

echo Tracing DNS for %domain%...
echo ---------------------------

nslookup -type=ns %domain% > nslookup.txt
if %ERRORLEVEL% neq 0 (
    echo Error: Unable to perform DNS trace.
    pause
    exit /b 1
)

echo Name Servers:
echo ------------
type nslookup.txt | findstr /i "nameserver"
echo.

echo DNS Resolution:
echo -------------
nslookup %domain% > dns_resolution.txt
if %ERRORLEVEL% neq 0 (
    echo Error: Unable to resolve DNS.
    pause
    exit /b 1
)

type dns_resolution.txt
echo.

del nslookup.txt
del dns_resolution.txt
pause
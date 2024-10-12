@echo off
set /p ip="Enter the IP address to geolocate: "

curl -s "https://ipapi.co/%ip%/json/" > ipgeo.json

if %ERRORLEVEL% neq 0 (
    echo Error: Unable to fetch geolocation data.
    pause
    exit /b 1
)

if not exist ipgeo.json (
    echo Error: Empty response from API.
    pause
    exit /b 1
)

echo IP Geolocation Data:
echo --------------------

for /f "tokens=2 delims=:" %%a in ('findstr /i "ip city region country latitude longitude" ipgeo.json') do (
    set "%%a=%%a"
)

if not defined ip (
    echo Error: Unable to extract geolocation data.
    pause
    exit /b 1
)

echo IP: %ip%
echo City: %city%
echo Region: %region%
echo Country: %country%
echo Latitude: %latitude%
echo Longitude: %longitude%

del ipgeo.json
pause
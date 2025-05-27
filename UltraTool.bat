@echo off 
chcp 65001
cls
:boot
cls
echo    ▄████████ ███    █▄     ▄███████▄    ▄████████    ▄████████          ███      ▄██████▄   ▄██████▄   ▄█       
echo   ███    ███ ███    ███   ███    ███   ███    ███   ███    ███      ▀█████████▄ ███    ███ ███    ███ ███       
echo   ███    █▀  ███    ███   ███    ███   ███    █▀    ███    ███         ▀███▀▀██ ███    ███ ███    ███ ███       
echo   ███        ███    ███   ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀          ███   ▀ ███    ███ ███    ███ ███       
echo ▀███████████ ███    ███ ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀            ███     ███    ███ ███    ███ ███       
echo          ███ ███    ███   ███          ███    █▄  ▀███████████          ███     ███    ███ ███    ███ ███       
echo    ▄█    ███ ███    ███   ███          ███    ███   ███    ███          ███     ███    ███ ███    ███ ███▌    ▄ 
echo  ▄████████▀  ████████▀   ▄████▀        ██████████   ███    ███         ▄████▀    ▀██████▀   ▀██████▀  █████▄▄██ 
echo                                                     ███    ███                                        ▀         
echo -----------------------------------------------------------------------------------------------------------------
echo   1)Password Generator         5)Card info Generator    9)Wifi scanner           13)Webhook spam
echo   2)Gmail checker              6)What's my ip          10)Spotify downloader 
echo   3)Discord gift Generator     7)Ip pinger             11)Url shorten
echo   4)Youtube downloader         8)Ip locator            12)Visual BTC miner
echo -----------------------------------------------------------------------------------------------------------------

set /p boot=Password [^>^>^>]

if "%boot%"=="BooTool" goto Main
if not "%boot%"=="BooTool" goto boot
:Main
cls
echo    ▄████████ ███    █▄     ▄███████▄    ▄████████    ▄████████          ███      ▄██████▄   ▄██████▄   ▄█       
echo   ███    ███ ███    ███   ███    ███   ███    ███   ███    ███      ▀█████████▄ ███    ███ ███    ███ ███       
echo   ███    █▀  ███    ███   ███    ███   ███    █▀    ███    ███         ▀███▀▀██ ███    ███ ███    ███ ███       
echo   ███        ███    ███   ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀          ███   ▀ ███    ███ ███    ███ ███       
echo ▀███████████ ███    ███ ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀            ███     ███    ███ ███    ███ ███       
echo          ███ ███    ███   ███          ███    █▄  ▀███████████          ███     ███    ███ ███    ███ ███       
echo    ▄█    ███ ███    ███   ███          ███    ███   ███    ███          ███     ███    ███ ███    ███ ███▌    ▄ 
echo  ▄████████▀  ████████▀   ▄████▀        ██████████   ███    ███         ▄████▀    ▀██████▀   ▀██████▀  █████▄▄██ 
echo                                                     ███    ███                                        ▀         
echo -----------------------------------------------------------------------------------------------------------------
echo   1)Password Generator         5)Card info Generator    9)Wifi scanner           13)Webhook spam
echo   2)Gmail checker              6)What's my ip          10)Spotify downloader 
echo   3)Discord gift Generator     7)Ip pinger             11)Url shorten
echo   4)Youtube downloader         8)Ip locator            12)Visual BTC miner
echo -----------------------------------------------------------------------------------------------------------------

set /p Main= ^<User^>^>^>
if "%Main%"=="1" goto pg
if "%Main%"=="2" goto gch
if "%Main%"=="3" goto dgg
if "%Main%"=="4" goto yd
if "%Main%"=="5" goto cig
if "%Main%"=="6" goto wmip
if "%Main%"=="7" goto ip
if "%Main%"=="8" goto il
if "%Main%"=="9" goto ws
if "%Main%"=="10" goto sd
if "%Main%"=="11" goto us
if "%Main%"=="12" goto vbm
if "%Main%"=="13" goto whs
if not "%Main%"=="1" goto Main
if not "%Main%"=="2" goto Main
if not "%Main%"=="3" goto Main
if not "%Main%"=="4" goto Main
if not "%Main%"=="5" goto Main
if not "%Main%"=="6" goto Main
if not "%Main%"=="7" goto Mian
if not "%Main%"=="8" goto Main
if not "%Main%"=="9" goto Main
if not "%Main%"=="10" goto Main
if not "%Main%"=="11" goto Main
if not "%Main%"=="12" goto Main
if not "%Main%"=="13" goto Main
:pg
cls
setlocal EnableDelayedExpansion

set "charset=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*"
set "length=6"
set "result="

for /L %%i in (1,1,%length%) do (
    set /a "index=!random! %% 70"
    for %%c in (!index!) do set "char=!charset:~%%c,1!"
    set "result=!result!!char!"
)

echo Password: !result!
pause
goto Main
:gch
goto Main
:dgg
cls
setlocal EnableDelayedExpansion


set "charset=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"


set /p count=Numbers of gifts: 


for /L %%i in (1,1,%count%) do (
    set "code="
    for /L %%j in (1,1,18) do (
        set /a rand=!random! %% 62
        for %%k in (!rand!) do set "code=!code!!charset:~%%k,1!"
    )
    echo discord.gift/!code!
)

pause
goto Main 
:yd
cls
setlocal EnableDelayedExpansion


set /p url=Url:


if not exist "yt-dlp.exe" (
    echo yt-dlp.exe not found. Please download yt-dlp and place it in this folder.
    pause
    exit /b
)


yt-dlp.exe --get-title "%url%" >nul 2>&1

if errorlevel 1 (
    echo Video not found.
) else (
    echo Downloading video...
    yt-dlp.exe "%url%"
)

pause
goto Main
:cig
cls
setlocal EnableDelayedExpansion

set names=John Alice Maria Alex David Emma Michael Sarah James Olivia
set surnames=Smith Johnson Garcia Brown Miller Davis Wilson Anderson Taylor Thomas
set cities=Paris Tokyo NewYork Cairo Sydney Berlin Toronto Moscow Rome Mumbai
set countries=France Japan USA Egypt Australia Germany Canada Russia Italy India


set /a idx=!random! %% 10


for /f "tokens=%idx%" %%a in ("%names%") do set name=%%a


set /a idx=!random! %% 10
for /f "tokens=%idx%" %%a in ("%surnames%") do set surname=%%a


set /a idx=!random! %% 10
for /f "tokens=%idx%" %%a in ("%cities%") do set city=%%a


set /a idx=!random! %% 10
for /f "tokens=%idx%" %%a in ("%cities%") do set tmpCity=%%a
for /f "tokens=%idx%" %%a in ("%countries%") do set country=%%a


set "card="
for /L %%i in (1,1,16) do (
    set /a digit=!random! %% 10
    set "card=!card!!digit!"
)


set /a month=1 + (!random! %% 12)
if !month! lss 10 set "month=0!month!"
set /a year=25 + (!random! %% 5)


set /a cvv=100 + (!random! %% 900)


echo Generated card info:
echo -----------------------
echo Name: !name! !surname!
echo City: !tmpCity!
echo Country: !country!
echo Card Number: !card!
echo Expiry Date: !month!/!year!
echo CVV: !cvv!
echo -----------------------

pause 
goto Main
:wmip
cls
ipconfig
pause
goto Main
:ip
cls
set /p png= IP/Website URL^>
ping %png%
pause
goto Main
:il
cls
setlocal enabledelayedexpansion


set /p ip=Enter IP address:


curl -s "http://ip-api.com/json/%ip%" > ipinfo.json


set lat=
set lon=

for /f "tokens=2 delims=:" %%a in ('findstr /i "lat" ipinfo.json') do (
    set lat=%%a
)

for /f "tokens=2 delims=:" %%a in ('findstr /i "lon" ipinfo.json') do (
    set lon=%%a
)


set lat=%lat:,=%
set lat=%lat: =%
set lon=%lon:,=%
set lon=%lon: =%

if defined lat if defined lon (
    echo IP: %ip%
    echo Latitude: %lat%
    echo Longitude: %lon%
    echo Google Maps URL:
    echo https://www.google.com/maps/search/?api=1^&query=%lat%,%lon%
) else (
    echo Could not retrieve location info for IP: %ip%
)

del ipinfo.json

pause
goto Main
:ws
cls
echo Scanning available Wi-Fi networks...
echo.

netsh wlan show networks mode=bssid

echo.
pause
goto Main
:sd
cls
echo Sorry this option is not available at the moment.
pause
goto Main
:us
cls
setlocal enabledelayedexpansion

set /p url="Your long link: "


set "urlEncoded=%url: =%%20%"

y)
for /f "delims=" %%a in ('curl -s "http://tinyurl.com/api-create.php?url=%url%"') do set shortUrl=%%a

echo Short link: %shortUrl%
pause
goto Main
:vbm
cls
echo Starting Bitcoin Miner...
timeout /t 2 >nul

setlocal enabledelayedexpansion
set "chars=|/-\"
set counter=0
set progress=0
set earnings=0

:mine_loop
cls
set /a counter=(counter + 1) %% 4
set "spinner=!chars:~%counter%,1!"

:: simulate mining progress
set /a progress+=1

if !progress! gtr 100 goto done

echo Mining bitcoins... !spinner!
echo Progress: !progress!%%

:: fake hash rate and earnings
set /a hashRate=3000 + (!random! %% 5000)
set /a earnings+=!random! %% 10

echo Hashrate: !hashRate! H/s
echo Bitcoins mined: 0.!earnings!

timeout /t 1 >nul
goto mine_loop

:done
cls
echo Mining complete!
echo Total bitcoins mined: 0.!earnings!
pause
goto Main
:whs
echo You need python to install this, we will install it now!
pause
@echo off
setlocal

echo Downloading Python installer...

:: URL of the official Python 3.11.5 (as example) 64-bit installer
set "python_url=https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe"
set "installer=python_installer.exe"

:: Download the installer using curl (Windows 10+)
curl -o %installer% %python_url%

if exist %installer% (
    echo Running Python installer silently...
    :: /quiet for silent install, /passive for minimal UI, /norestart no reboot
    start /wait %installer% /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
    echo Python installation finished.
) else (
    echo Download failed!
)

pause
endlocal
goto whs1
:whs1
pip install requests
python whs.py
goto Main
@echo off
cd /d "%~dp0"
title Ket Noi Cloudflare Tunnel - Red-Team A2A

set PYTHONIOENCODING=utf-8
set PYTHONUTF8=1

echo ================================================================
echo       KHOI TAO DUONG LINK CLOUDFLARE CHO HOC SINH TRUY CAP
echo ================================================================
echo.

if not exist "cloudflared.exe" (
    echo [LOI] Khong tim thay cloudflared.exe trong thu muc!
    pause
    exit /b
)

echo [1/2] Dang kiem tra va tat tien trinh cloudflared cu...
taskkill /f /im cloudflared.exe >nul 2>&1

if not exist "data\redteam_collected" (
    mkdir "data\redteam_collected"
)

set "LOGFILE=%~dp0data\redteam_collected\cloudflared.log"
set "URLFILE=%~dp0data\redteam_collected\cloudflare_url.txt"

if exist "%LOGFILE%" del "%LOGFILE%"
if exist "%URLFILE%" del "%URLFILE%"

echo [2/2] Dang tao duong ham Cloudflare ket noi den http://localhost:8501...
echo.
echo ================================================================
echo   DUONG LINK SE XUAT HIEN TRUC TIEP O DUOI DAY (DANG HTTPS):
echo   Thay hay boi den sao chep link https://...trycloudflare.com
echo ================================================================
echo.

"%~dp0cloudflared.exe" tunnel --protocol http2 --url http://127.0.0.1:8501 --logfile "%LOGFILE%"

pause

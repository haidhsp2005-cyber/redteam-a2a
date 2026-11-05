@echo off
cd /d "%~dp0"
title Dau Truong Red-Team A2A

set PYTHONIOENCODING=utf-8
set PYTHONUTF8=1

echo [1/2] Dang kiem tra va tat tien trinh cu tren cong 8501...
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :8501') do (
    taskkill /f /pid %%a >nul 2>&1
)

set "PY=C:\Users\Admin\AppData\Local\Programs\Python\Python314\python.exe"

echo [2/2] Khoi dong Streamlit voi ma nguon moi nhat...
echo ===================================================
echo       KHOI DONG DAU TRUONG RED-TEAM A2A
echo ===================================================
echo.

if exist "%PY%" (
    "%PY%" -m streamlit run app.py --server.address 0.0.0.0 --server.port 8501 --server.enableCORS false --server.enableXsrfProtection false --browser.gatherUsageStats false
) else (
    python -m streamlit run app.py --server.address 0.0.0.0 --server.port 8501 --server.enableCORS false --server.enableXsrfProtection false --browser.gatherUsageStats false
)

pause

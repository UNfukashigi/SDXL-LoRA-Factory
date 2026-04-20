@echo off
setlocal
cd /d %~dp0

echo [SDXL LoRA Factory] Initializing...

:: Run setup check
python backend/setup_check.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Setup check failed. Please check the messages above.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [SDXL LoRA Factory] Starting backend server...
echo Access the GUI at http://localhost:8000
echo.

:: Start browser
start http://localhost:8000

:: Run backend
cd backend
python main.py

pause

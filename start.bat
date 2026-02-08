@echo off
echo ================================================
echo   GA Automation Web App - Starting
echo ================================================
echo.

REM Check if Python is installed
where python >nul 2>nul
if %errorlevel% neq 0 (
    echo ERROR: Python is not installed!
    echo Please install Python 3.8+ from https://python.org
    pause
    exit /b 1
)

echo Python found: 
python --version
echo.

REM Check if virtual environment exists
if not exist "venv" (
    echo Creating virtual environment...
    python -m venv venv
    echo Virtual environment created
    echo.
)

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat

REM Install dependencies
echo Installing dependencies...
pip install -r requirements.txt --quiet
echo Dependencies installed
echo.

REM Create necessary folders
echo Creating necessary folders...
if not exist "uploads" mkdir uploads
if not exist "template" mkdir template
if not exist "outputs" mkdir outputs
echo Folders created
echo.

REM Start the application
echo ================================================
echo   Starting GA Automation Server
echo ================================================
echo.
echo Access the app at: http://localhost:5000
echo Press Ctrl+C to stop the server
echo.
echo ================================================
echo.

python app.py

pause

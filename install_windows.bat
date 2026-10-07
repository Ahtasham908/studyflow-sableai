@echo off
cd /d "%~dp0"
py -3 -m venv .venv
if errorlevel 1 goto failed
.venv\Scripts\python.exe -m pip install --no-cache-dir --upgrade pip
.venv\Scripts\python.exe -m pip install --no-cache-dir -r requirements.txt
if errorlevel 1 goto failed
echo Installation complete. Open launch_windows.bat to start StudyFlow.
pause
exit /b 0
:failed
echo Installation failed. Install Python 3.11 or newer, check your connection and try again.
pause
exit /b 1

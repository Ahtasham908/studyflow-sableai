@echo off
cd /d "%~dp0"
if not exist .venv\Scripts\python.exe (
 echo Run install_windows.bat first.
 pause
 exit /b 1
)
.venv\Scripts\python.exe -m pip install --no-cache-dir "pyinstaller>=6,<7"
if errorlevel 1 goto failed
.venv\Scripts\python.exe -m PyInstaller --noconfirm StudyFlow.spec
if errorlevel 1 goto failed
echo Built application: dist\StudyFlow\StudyFlow.exe
pause
exit /b 0
:failed
echo Build failed. Review the error above.
pause

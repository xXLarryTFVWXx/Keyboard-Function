@echo off
cls
Set Path=%Path%;%CD%;%CD%\Lib;
timeout 1 >nul
setlocal ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
call keyboard
echo.!n!
set var=t
for /f "delims=" %%x in (value.txt) do (
set var=!var!%%x
echo %%x
)
set var=%var:~1%
echo !var! %var%
goto end
:end
echo. !errorlevel! %errorlevel% !var!
timeout 2
endlocal
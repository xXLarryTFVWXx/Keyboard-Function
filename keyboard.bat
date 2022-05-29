@echo.off
cls
Set "Path=%Path%;%CD%;%CD%\Lib;"
VERIFY OTHER 2>nul
setlocal ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
if ERRORLEVEL 1 echo.unable to enable extensions

mode con: cols=135 lines=40
set _ver=0.1
if /i "%~1" == "-?" (goto :help)
if /i "%~1" == "/?" (goto :help)
if /i "%~1" == "/h" (goto :help)
if /i "%~1" == "-h" (goto :help)
if /i "%~1" == "/help" (goto :help)
if /i "%~1" == "-help" (goto :help)
if exist value.txt (del value.txt)
:Main

cls
Call Button 5 5 A0 "Q" 15 5 B0 "W" 25 5 B0 "E" 35 5 B0 "R" 45 5 B0 "T" 55 5 B0 "Y" 65 5 B0 "U" 75 5 B0 "I" 85 5 B0 "O" 95 5 B0 "P" 10 10 B0 "A" 20 10 B0 "S" 30 10 B0 "D" 40 10 B0 "F" 50 10 B0 "G" 60 10 B0 "H" 70 10 B0 "J" 80 10 B0 "K" 90 10 B0 "L" 15 15 B0 "Z" 25 15 B0 "X" 35 15 B0 "C" 45 15 B0 "V" 55 15 B0 "B" 65 15 B0 "N" 75 15 B0 "M" 100 10 B0 "Enter" X _Var_Box _Var_Hover
echo.!s!
GetInput /M %_Var_Box% /H %_Var_Hover%
echo.!errorlevel!
REM Q
if !errorlevel! EQU 1 (echo.Q>> value.txt)
REM E
if !errorlevel! EQU 2 (echo.W>> value.txt)
REM R
if !errorlevel! EQU 3 (echo.E>> value.txt)

if !errorlevel! EQU 4 (echo.R>> value.txt)
if !errorlevel! EQU 5 (echo.T>> value.txt)
if !errorlevel! EQU 6 (echo.Y>> value.txt)
if !errorlevel! EQU 7 (echo.U>> value.txt)
if !errorlevel! EQU 8 (echo.I>> value.txt)
if !errorlevel! EQU 9 (echo.O>> value.txt)
if !errorlevel! EQU 10 (echo.P>> value.txt)
if !errorlevel! EQU 11 (echo.A>> value.txt)
if !errorlevel! EQU 12 (echo.S>> value.txt)
if !errorlevel! EQU 13 (echo.D>> value.txt)
if !errorlevel! EQU 14 (echo.F>> value.txt)
if !errorlevel! EQU 15 (echo.G>> value.txt)
if !errorlevel! EQU 16 (echo.H>> value.txt)
if !errorlevel! EQU 17 (echo.J>> value.txt)
if !errorlevel! EQU 18 (echo.K>> value.txt)
if !errorlevel! EQU 19 (echo.L>> value.txt)
if !errorlevel! EQU 20 (echo.Z>> value.txt)
if !errorlevel! EQU 21 (echo.X>> value.txt)
if !errorlevel! EQU 22 (echo.C>> value.txt)
if !errorlevel! EQU 23 (echo.V>> value.txt)
if !errorlevel! EQU 24 (echo.B>> value.txt)
if !errorlevel! EQU 25 (echo.N>> value.txt)
if !errorlevel! EQU 26 (echo.M>> value.txt)

if !errorlevel! EQU 27 (goto :eof)

goto Main

:help

echo.
echo. A Keyboard function based off of the calculator from the BatTeam.org
echo. 
echo. Just simply use call keyboard from your program
echo. and use the following code to retrieve your value.
echo. for /f "delims=" %%%%x in (value.txt) do (set var=%%%%x)
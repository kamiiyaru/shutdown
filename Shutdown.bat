@echo off
title Shutdown v1.0
color 2
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
setlocal enabledelayedexpansion

:: Get the width of the console
for /f "tokens=2 delims=:" %%a in ('mode con ^| findstr "Columns"') do set width=%%a
set width=%width:~1%  &rem Trim leading space

:: Create a line of "="
set line=
for /L %%i in (1,1,%width%) do set "line=!line!="

:: Echo the line


:Menu
cls
type "C:\Users\hp\Desktop\ext\cat.txt"
echo !line!
echo.
echo 1. Start
echo 2. Abort
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%=="2" goto Abort
if %answer%=="3" goto Exit

:Exit
cls
chcp 65001
type "C:\Users\hp\Desktop\ext\cat-bye.txt"
pause
exit/b

:Abort
cls
type "C:\Users\hp\Desktop\ext\cat-bye.txt"
shutdown -a
echo hold
pause
exit

:Start_1
cls
type "C:\Users\hp\Desktop\ext\cat.txt"
echo !line!
echo.
echo 1. 15 Minute
echo 2. 30 Minute
echo 3. 1 Hour
echo 4. 2 Hour
set /p answer=How long is your timer gonna be? :
if %answer%==1 goto Fm
if %answer%==2 goto Tm
if %answer%==3 goto Oh
if %answer%==4 goto Th
echo Invalid choice
pause
goto Start_1

:Fm
shutdown -s -t 900
cls
type "C:\Users\hp\Desktop\ext\cat-bye.txt"
echo "your pc will shutdown in 15m"
pause
exit

:Tm
shutdown -s -t 1800
cls
type "C:\Users\hp\Desktop\ext\cat-bye.txt"
echo "your pc will shutdown in 30m"
pause
exit

:Oh
shutdown -s -t 3600
cls
type "C:\Users\hp\Desktop\ext\cat-bye.txt"
echo "your pc will shutdown in 1 hour"
pause
exit

:Th
shutdown -s -t 7200
cls
type "C:\Users\hp\Desktop\ext\cat-bye.txt"
echo "your pc will shutdown in 2 hour"
pause
exit
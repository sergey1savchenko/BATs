:start
@echo off
cls
title Calculator
color 71
echo Enter the polynom:
set /p Exp=
set /a Result=%Exp%
cls
echo Done!
echo Your polynom: %Exp%
echo Result: %Result%
echo.
echo press any key . . .
pause > nul
goto start
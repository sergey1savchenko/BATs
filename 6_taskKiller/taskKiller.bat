@echo off
@title Task Killer
SetLocal EnableDelayedExpansion

For /F "tokens=1 delims=," %%p In ('tasklist /FO CSV^|sort') Do (
  Set nam=%%p
  if %%p neq "" (
    Set /A nn +=1
    set proc!nn!=%%p
    if !nn! lss 10 (Echo ^ !nn!. !nam:~1,-1!) else (Echo !nn!. !nam:~1,-1!)
))

:start
set /p kill=Enter the number of task you want to stop:
if "%kill%"=="" goto :start
echo You have chosen !proc%kill%!. Are you shure?
echo.
pause
taskkill /f /im !proc%kill%! /T

pause
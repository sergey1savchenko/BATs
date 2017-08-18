@echo off
@title Finder
SetLocal EnableExtensions EnableDelayedExpansion
color 07

Set /p "Seek=enter the part of name of the directory to search for: "
For /F "tokens=2 delims==" %%D in ('wmic logicaldisk where drivetype^=3 get caption /value^| find /i "Caption"') do (
  set Disk=%%D
  set Disk=!Disk:~0,2!
  set Again=
  for /f "delims=" %%? in ('dir /B /AD "!Disk!\*" ^| find /i "%Seek%"') do (
    if not Defined Again (
      set Again=true
      echo.
      echo Drive !Disk!
      echo ============      
    )
    Set /A C+=1
    Set Folder.!C!=!Disk!\%%?
    echo !C!. %%?
))
Echo.
set /p "ch=Select the number to open it: "
start "" "!Folder.%ch%!"
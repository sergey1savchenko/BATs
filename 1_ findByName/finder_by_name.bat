@echo off
@title Finder
color 07

:A
echo enter the root directory to search for:
set /p rdir=
echo enter the name of file to search:
set /p name=

dir /b /s /a-d %rdir%:\%name%.* > fbN_Output.txt
echo ====================DONE====================
goto A

pause
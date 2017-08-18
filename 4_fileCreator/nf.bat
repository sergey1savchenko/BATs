@echo off
:: Create an empty file whose name is given in the command line
if "%1" EQU "" goto error
copy nul %1
goto exit
:error
ECHO ERROR: You must give some name for a new file!
:exit
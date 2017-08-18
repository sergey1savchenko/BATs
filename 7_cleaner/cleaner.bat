@echo off
@title Cleaner

set /p con="Continue y/n %?"
if %con%==y (
goto goon
) else goto end

:goon
DEL /F /S /Q %WINDIR%\Temp\*.*
DEL /F /S /Q %SYSTEMDRIVE%\Temp\*.*
DEL /F /S /Q %Temp%\*.*
DEL /F /S /Q %Tmp%\*.*
DEL /F /S /Q %WINDIR%\Prefetch\*.*
DEL /F /S /Q %SYSTEMDRIVE%\*.log
DEL /F /S /Q %SYSTEMDRIVE%\*.bak
DEL /F /S /Q %SYSTEMDRIVE%\*.gid

:end
pause
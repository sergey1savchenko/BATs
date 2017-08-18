@echo off
@title Finder
color 07

:A
echo enter the root directory to search for:
set /p rdir=
echo enter the extension of files to search:
set /p ext=

rem /s=відображення файлів з каталогу і всіх підкаталогів /a-d=не перевіряти каталоги
dir /b /s /a-d %rdir%:\*.%ext% > fbE_Output.txt
echo ====================DONE====================
goto A

pause
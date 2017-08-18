chcp 1251
color 08
@echo off
@title AutoBackups


set FROM=C:\Users\Serhii\Downloads
set TO=C:\Users\Serhii\backups
rem Створення каталогу для зберігання
md "%TO%\"
rem Формування імя каталогуз поточної дати
set VDATE=%date:~-10%
rem Ім'я архіву - поточна дата - 12:00:00.99
rem відкинути соті долі секунди, заміна : на . - 12.00.00

set vtime=%TIME:~0,-3%
set vtime=%vtime::=.%
rem Створення підкаталогу, ім'я - поточна дата
md "%TO%\%VDATE%"
:: команда для архівування, ключ -r - для арх. з вкладеними папками
:: -mn, n - 1-5 степінь стискання

rar.exe a -r -m3 "%TO%\%VDATE%\%VTIME%.rar" "%FROM%\*.*"

pause
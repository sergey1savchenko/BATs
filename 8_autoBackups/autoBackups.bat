chcp 1251
color 08
@echo off
@title AutoBackups


set FROM=C:\Users\Serhii\Downloads
set TO=C:\Users\Serhii\backups
rem ��������� �������� ��� ���������
md "%TO%\"
rem ���������� ��� ��������� ������� ����
set VDATE=%date:~-10%
rem ��'� ������ - ������� ���� - 12:00:00.99
rem �������� ��� ��� �������, ����� : �� . - 12.00.00

set vtime=%TIME:~0,-3%
set vtime=%vtime::=.%
rem ��������� ����������, ��'� - ������� ����
md "%TO%\%VDATE%"
:: ������� ��� �����������, ���� -r - ��� ���. � ���������� �������
:: -mn, n - 1-5 ������ ���������

rar.exe a -r -m3 "%TO%\%VDATE%\%VTIME%.rar" "%FROM%\*.*"

pause
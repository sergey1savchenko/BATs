@echo off
@title Comparator
SetLocal EnableExtensions EnableDelayedExpansion
color 07

set Mask=*.txt
:: to check
set tc="E:\Navchanna2.0\_Course_work\01_kursova_Savchenko\Utilities\2.3.9_comparator\answers\*.txt"
:: right answers
set ra="E:\Navchanna2.0\_Course_work\01_kursova_Savchenko\Utilities\2.3.9_comparator\rightAnswers.txt"

FOR %%f IN (%tc%) DO (

	fc "%%f" "%ra%"

	IF ERRORLEVEL 1 (
	echo %%~nf is wrong>>results.txt
	) ELSE echo %%~nf is right>>results.txt

)

pause
@echo off
::5° Convert to int
set var=13145
set /A var=%var% + 5
echo %var%

::6° Align right
set str=Hello World 
echo %str% 
:: Show content of string cutting 1 from the end
set y=%str:~-3% 
echo %y%
:: Show content of string cutting 2 from the begining
set y=%str:~3% 
echo %y%

::7° Align left
set y=%str:~0,5% 
echo %y%

::8° Align Mid
set y=%str:~5,11% 
echo %y%

::9° Remove
set y=%str:l=%
echo %y%

::10° Remove spaces
set y=%str: =%
echo %y%

::11° Replace
set y=%str:World=You%
echo %y%
@echo off
:: 1° This displays Hello World
set message = Hello World
echo %message%

::2° Empty String
SET a=
SET b=Hello
if [%a%]==[] echo "String A is empty"
if [%b%]==[] echo "String B is empty"

::3° String Interpolation and Concatenation
SET a=Hello
SET b=World
SET /A d=50
SET c=%a% and %b% %d%
echo %c%

::4° String Length
set str=Hello World
call :strLen str strlen
echo Str is %strlen% characters long
exit /b

::Function
:strLen
setlocal enabledelayedexpansion

:strLen_Loop
   if not "!%1:~%len%!"=="" set /A len+=1 & goto :strLen_Loop
(endlocal & set %2=%len%)
goto :eof



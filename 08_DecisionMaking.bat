@echo off 
::if else statements
SET /A a=5 
SET /A b=10
SET /A c=%a% + %b% 
if %c%==15 (echo "The value of variable c is 15") else (echo "Unknown value") 
if %c%==10 (echo "The value of variable c is 10") else (echo "Unknown value")

::if errorlevel - if errorlevel n somecommand
::  It's used to test the exit codes of the last command that was run.
::  pass 0, failed 1


:: goto statement - if (condition) goto :label
SET /A a=5 

if %a%==5 goto :labela 
if %a%==10 goto :labelb

:labela 
echo "The value of a is 5" 
:: Note* - We have to end the program here to avoid execution involuntary 
:: of the function/label "labelb".
exit /b 0

:labelb 
echo "The value of a is 10"
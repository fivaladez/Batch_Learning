@echo OFF
:: One of the limitations of command line arguments is that it can accept only arguments till %9.
:: This limitation can be avoided by using the SHIFT operator. After your batch file handled its 
:: first parameter(s) it could SHIFT them (just insert a line with only the command SHIFT)

:Loop

IF "%1"=="" GOTO Continue
   echo %1%
SHIFT
GOTO Loop

:Continue

:: This will allow you to introduce n parameters without 
:: worry for the 9 parameters limitation
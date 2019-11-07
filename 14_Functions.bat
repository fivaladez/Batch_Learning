@echo OFF
:: In Batch Script, a function is defined by using the label statement. 
:: To use a function, you "call" that function with its name and pass its input
:: values (known as arguments) that matches the types of the function's parameters.

CALL :SetValue value1,value2
echo %value1%
echo %value2%

set str=Outer
echo %str%
CALL :SetValue2 str
echo %str%

EXIT /B %ERRORLEVEL%

:SetValue
:: ~1 and ~2 are used to access the parameters
set "%~1=5"
set "%~2=10"
:: Return values refers to modify the parameters
EXIT /B 0


:SetValue2
SETLOCAL
set str=Inner
set "%~1=%str%"
ENDLOCAL
EXIT /B 0
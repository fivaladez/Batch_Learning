@echo off
Rem Command line arguments can be passed as %1,..., %n
echo %1
echo %2
echo %3

Rem define a GLOBAL variable to hold a numeric value "/a"
set /a g_var=%1 + %2 + %3
Rem NOTE: if you pass a string to this variable, the string and operators will be ignored
echo %g_var%

setlocal
set /a l_var=30
echo %l_var%
endlocal

Rem The next statement will not display the content of l_var because it is local
echo %l_var%

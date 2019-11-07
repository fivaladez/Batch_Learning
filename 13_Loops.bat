@echo OFF
:: While using labels
SET /A "index = 1"
SET /A "count = 5"
:while
if %index% leq %count% (
   echo The value of index is %index%
   SET /A "index = index + 1"
   goto :while
)

:: For List
set list=1 2 3 4
for %%f in (%list%) do echo %%f

for %%f in (10 20 30) do echo %%f

:: For List by Range
:: FOR /L %%variable IN (lowerlimit,Increment,Upperlimit) DO do_something
:: The /L switch is used to denote that the loop is used for iterating through ranges.
FOR /L %%X IN (0,2,5) DO ECHO %%X

:: Classic loop implementation
SET /A i=1 
:loop 

IF %i%==5 GOTO END 
echo The value of i is %i% 
SET /a i=%i%+1 
GOTO :loop 
:END

:: Loop through Command Line Arguments
:: 13_Loops.bat 32 w 78 Hola
:loop2 

IF "%1"=="" GOTO completed 
FOR %%F IN (%1) DO echo %%F 
SHIFT 
GOTO loop2 
:completed
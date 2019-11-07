@echo off 
:: Aritmetic Operators
SET /A a=5
SET /A b=10
SET /A c=%a%+%b%
echo %c%
SET /A c=%a%-%b%
echo %c%
SET /A c=%b%*%a%
echo %c%
SET /A c=%b%/%a%
echo %c%
SET /A c=%b% %% %a%
echo %c%
echo %a%

:: Relational Operators
if %a% EQU %b% echo A is equal to than B 
if %a% NEQ %b% echo A is not equal to than B 
if %a% LSS %b% echo A is less than B 
if %a% LEQ %b% echo A is less than or equal B
if %a% GTR %b% echo A is greater than B 
if %a% GEQ %b% echo A is greater than or equal to B

:: Logical Operators
:: The batch language is equipped with a full set of Boolean logic operators 
:: like AND, OR, XOR, but only for binary numbers. Neither are there any values
:: for TRUE or FALSE. The only logical operator available for conditions is 
:: the NOT operator.


:: Assigment operators
SET /A x = 5
SET /A x+=5
echo %a%
SET /A x-=5
echo %a%
SET /A x*=5
echo %a%
SET /A x/=5
echo %a%
SET /A x%=5
echo %a%

:: Bitwise Operators
SET /A "Result=48 & 23"
:: 11 0000 & 01 0111 = 01 0000 = 16
echo %Result%
SET /A "Result=16 | 16"
:: 01 0000 & 01 0000 = 01 0000 = 16
echo %Result%
SET /A "Result=31 ^ 15"
echo %Result%
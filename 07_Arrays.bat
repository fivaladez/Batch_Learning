@echo off
::A way to create an array
set list=1 2 3 4 
(for %%a in (%list%) do ( 
   echo %%a 
))
:: Using arrays
set Arr[0]=1 
set Arr[1]=2 
set Arr[2]=3 
echo The first element of the array is %Arr[0]% 
echo The second element of the array is %Arr[1]% 
echo The third element of the array is %a[2]%

::Iterating over an array
setlocal enabledelayedexpansion 
set topic[0]=comments 
set topic[1]=variables 
set topic[2]=Arrays 
set topic[3]=Decision making 
set topic[4]=Time and date 
set topic[5]=Operators 

for /l %%n in (0,1,5) do ( 
   echo !topic[%%n]! 
)

::Length of an Array
set x=0

:SymLoop 
if defined Arr[%x%] ( 
   call echo %%Arr[%x%]%% 
   set /a x+=1
   GOTO :SymLoop 
)
echo "The length of the array is" %x%

::Structures in arrays
set len=3 
set obj[0].Name=Joe 
set obj[0].ID=1 
set obj[1].Name=Mark 
set obj[1].ID=2 
set obj[2].Name=Mohan 
set obj[2].ID=3 
set i=0 

:loop 
if %i% equ %len% goto :eof 
set cur.Name= 
set cur.ID=

for /f "usebackq delims==.tokens=1-3" %%j in (`set obj[%i%]`) do ( 
   set cur.%%k=%%l 
) 
echo Name = %cur.Name% 
echo Value = %cur.ID% 
set /a i = %i%+1 
goto loop
@echo OFF
:: By default when a command line execution is completed it should either 
:: return zero when execution succeeds or non-zero when execution fails.

:: 0	Program successfully completed.
:: 1	Incorrect function. 
:: 2	The system cannot find the file specified. 
:: 3	The system cannot find the path specified.
:: 5	Access is denied. 
:: 9009 Program is not recognized as an internal or external command,
::      operable program or batch file. 
:: 221225495 	Not enough virtual memory is available.
:: 3221225786	The application terminated as a result of a CTRL+C.
:: 3221225794	The application failed to initialize properly

:: The environmental variable %ERRORLEVEL% contains the return code of 
:: the last executed program or script.

if %ERRORLEVEL% NEQ 0 ( 
   echo DO_Something 
   
)

if not exist c:\lists.txt echo "file does not exist: %ERRORLEVEL%"
if defined not userprofile echo "userprofile not defined: %ERRORLEVEL%"

EXIT /B %ERRORLEVEL%
::  To return custom return codes.


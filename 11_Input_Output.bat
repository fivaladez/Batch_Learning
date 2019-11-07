@echo OFF
:: There are three universal “files” for keyboard input, printing text on
:: the screen and printing errors on the screen. The “Standard In” file,
:: known as stdin, contains the input to the program/script. 
:: The “Standard Out” file, known as stdout, is used to write output for 
:: display on the screen. Finally, the “Standard Err” file, known as stderr, 
:: contains any error messages for display on the screen.

:: Each of these three standard files, otherwise known as the standard 
:: streams, are referenced using the numbers 0, 1, and 2. Stdin is file 0, 
:: stdout is file 1, and stderr is file 2.

::Redirect stdout to a file
dir /B > list.txt
::Redirect stderr to a file, so, stdout will be displayed
dir /B 2> list.txt
::combine the stdout and stderr streams
dir /B > list.txt 2>&1
:: The pseudo file NUL is used to discard any output from a program.
dir C:\ > NUL
:: Redirecting the command prompt’s own stdin, called CON.
TYPE CON > lists.txt
@echo OFF
:: File I/O

:: Creating a file
echo "Hello" > new.txt

:: Writing to a file
dir /b > new.txt

:: Appending to a file
echo "Hello you" >> new.txt

:: Reading a file
FOR /F "tokens=* delims=" %%x in (new.txt) DO echo %%x

:: Rename a file
rename new.txt new_2.txt

:: Move a file
move new_2.txt FolderNew/new_2.txt

:: Pipes
type new.txt | sort
:: Combining Commands with Redirection Operators
dir C:\ | find "txt" > AllText.txt

:: Delete a file
del new.txt
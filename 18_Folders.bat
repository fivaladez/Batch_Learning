@echo OFF

:: Creates a folder
mkdir a

:: List files ending with .txt and .doc in current folder
dir *.txt *.doc

:: Rename a folder
ren a z

mkdir d
:: Move folder and change the name
move z d/y

:: Delete a folder
rmdir d /s /q
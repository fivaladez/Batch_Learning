@echo OFF
Rem he cd without any parameters is used to display the current working directory
cd
copy "commands_Windows.txt" "cmd_Windows.txt"
date /T
dir /B
pause
del "cmd_Windows.txt"
echo "Hello World!"
find "directory" "commands_Windows.txt"
mkdir d1
copy "commands_Windows.txt" "cmd_Windows.txt"
move "cmd_Windows.txt" "d1/cmd_Windows_moved.txt"
path
pause
rename "d1/cmd_Windows_moved.txt" "d1/cmd_Windows_moved_2.txt"
pause
rd /s /q d1
time /t
type "commands_Windows.txt"
ver

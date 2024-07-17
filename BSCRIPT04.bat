@echo off

set root=C:\*.txt
set archive=Z:\Archived
set /a day=1000

if not exist "%archive%" mkdir "%archive%"

for %%f in (%root%) do (
    move "%%f" "%archive%\"
)


echo Files moved to %archive% and sorted by size:
dir "%archive%\*.txt" /O:-S /B

::i searched for this line of code, its supposed to delete txt files older than specific days which i set to 1000. 
forfiles /p "%archive%\*.txt" /s /m *.* /D -%day% /C "cmd /c del @%archive%"

echo All files older that 1000 days are deleted...ending program.
pause




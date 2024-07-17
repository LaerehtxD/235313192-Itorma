@echo off

:main
cls
echo Select a Command you want to do:
echo 1-ipconfig
echo 2-tasklist
echo 3-taskkill
echo 4-chkdsk
echo 5-format
echo 6-defrag
echo 7-find
echo 8-attrib
echo 9-exit console


set /p userInput="Enter operation: "


if "%userInput%"=="1" goto ipconfig
if "%userInput%"=="2" goto tasklist
if "%userInput%"=="3" goto taskkill
if "%userInput%"=="4" goto chkdsk
if "%userInput%"=="5" goto format
if "%userInput%"=="6" goto defrag
if "%userInput%"=="7" goto find
if "%userInput%"=="8" goto attrib
if "%userInput%"=="9" goto :eof


echo Error!!! Please input valid operation, Please enter a number between 1 and 8.
pause
goto main


:ipconfig
echo Used command "ipconfig".
ipconfig

pause
goto main

:tasklist
echo Used command "tasklist".
tasklist

pause
goto main


:taskkill
set /p pid="Enter PID: "
if "%pid%"=="" (
    echo Please enter correct PID.
    pause
    goto taskkill
)

echo Used command "tasklist" for PID %pid%...
taskkill /PID %pid%

pause
goto main


:chkdsk
set /p drive="Enter drive letter: "
if "%drive%"=="" (
    echo Please enter correct Drive letter.
    pause
    goto chkdsk
)
echo Used command "chkdsk" on drive %drive%...
chkdsk %drive%

pause
goto main


:format
set /p drive="Enter drive letter to format: "
if "%drive%"=="" (
    echo Please enter correct Drive letter

    pause
    goto format
)
echo ARE YOU SURE YOU WANT TO FORMAT DRIVE %drive%:
set /p confirm="This action cannot be restored, do you still want to continue formatting drive %drive%? (yes/no): "
if /i "%confirm%" neq "yes" (
    echo Action Cancelled

    pause
    goto main
)
echo Formatting drive %drive%...
format %drive%

pause
goto main


:defrag
set /p drive="Enter drive letter to defrag: "
if "%drive%"=="" (
    echo Please enter correct Drive letter
    pause

    goto defrag
)

echo Defragging drive %drive%...
defrag %drive%

pause
goto main


:find
set /p stringInput="What text do you want to find: "
set /p fileName="Enter the file to search in (with path): "
if "%stringInput%"=="" (
    echo Please intput the text you want to search.
    pause
    goto find
)
if "%fileName%"=="" (
    echo Please input the correct filename.
    pause
    goto find
)
echo Searching for "%stringInput%" text in the file %fileName%...
find "%stringInput%" %fileName%
pause
goto main


:attrib
set /p fileName="Enter the file or directory that you want to change the attribute(with path): "
if "%fileName%"=="" (
    echo Filename or directory cannot be empty. Please enter a valid path.
    pause
    goto attrib
)
echo Executing attrib on %fileName%...
attrib %fileName%
pause
goto main


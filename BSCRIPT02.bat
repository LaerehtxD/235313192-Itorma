@echo off

:main
cls
echo Select a shape:
echo 1 - Circle
echo 2 - Triangle
echo 3 - Quadrilateral
echo 4 - exit console

set /p userInput="Choose the number of the operation you want: "

if "%userInput%" == "1" goto Circle
if "%userInput%" == "2" goto Triangle
if "%userInput%" == "3" goto Quadrilateral
if "%userInput%" == "4" goto :eof

echo Error!!! Please input valid operation, Choose 1, 2 or 3.
goto main

:Circle
set /p rad="Enter the radius of a circle: "
set circleArea=0

::I dont know how to do this operatrion in batch file so i just searched it :). (*3.14 * %rad% * %rad%) doesnt work.
for /f "tokens=* delims=" %%A in ('powershell "([math]::PI * %rad% * %rad%)"') do set circleArea=%%A

echo Circle Area: %circleArea%

pause
goto main


:Triangle
set /p side1="Triangle side 1: "
set /p side2="Triangle side 2: "
set /p side3="Triangle side 3: "

if "%side1%"=="%side2%" (
    if "%side2%"=="%side3%" (
        echo The triangle is equilateral.
    ) else (
        echo The triangle is isosceles.
    )
) else (
    if "%side1%"=="%side3%" (
        echo The triangle is isosceles.
    ) else (
        if "%side2%"=="%side3%" (
            echo The triangle is isosceles.
        ) else (
            echo The triangle is scalene.
        )
    )
)

::I also searched this
for /f "tokens=* delims=" %%A in ('powershell "((%side1% + %side2% + %side3%) / 2)"') do set s=%%A

for /f "tokens=* delims=" %%A in ('powershell "[math]::Sqrt(%s% * (%s% - %side1%) * (%s% - %side2%) * (%s% - %side3%))"') do set triangleArea=%%A
echo Triangle Area: %triangleArea%

pause
goto main


:Quadrilateral
set /p length="Lenght: "
set /p width="Width: "

if "%length%"=="%width%" (
    echo The quadrilateral is a square.
) else (
    echo The quadrilateral is a rectangle.
)

set /a quadArea=%length% * %width%
echo Quadrilateral Area: %quadArea%

pause
goto main
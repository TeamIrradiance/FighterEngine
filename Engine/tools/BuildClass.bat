@echo off

set /p objectName=Class Name:
set /p location= Class Location:
set /p author=Author:

set hfile=..\source\%location%\%objectName%.h
set newhfile=..\source\%location%\Hello.h

set cppfile=..\source\%location%\%objectName%.cpp
set newcppfile=..\source\%location%\Hello.cpp

copy /y templates\Object_Template.cpp ..\source\%location%\%objectName%.cpp
copy /y templates\Object_Template.h ..\source\%location%\%objectName%.h

call repl.bat "ClassTemplate" "%objectName%" L < "%cppfile%" >"%newcppfile%"
del "%cppfile%"

call repl.bat "ClassTemplate" "%objectName%" L < "%hfile%" >"%newhfile%"
del "%hfile%"

cd ..\source\%location%\
rename "Hello.cpp" "%objectName%.cpp"
rename "Hello.h" "%objectName%.h"

cd ..\..\..\..\tools

call repl.bat "Darthvader" "%author%" L < "%cppfile%" >"%newcppfile%"
del "%cppfile%"

call repl.bat "Darthvader" "%author%" L < "%hfile%" >"%newhfile%"
del "%hfile%"

cd ..\source\%location%\
rename "Hello.cpp" "%objectName%.cpp"
rename "Hello.h" "%objectName%.h"

cd ..\..\..\..\premake

.\premake5 vs2013
pause
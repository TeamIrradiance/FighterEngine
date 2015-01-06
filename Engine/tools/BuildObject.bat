@echo off

set /p objectName=Object Name:
set /p type= Object Type (Audio, Graphics, Physics):
set /p author=Author:

set hfile=..\source\Data\Objects\%type%\%objectName%.h
set newhfile=..\source\Data\Objects\%type%\Hello.h

set cppfile=..\source\Data\Objects\%type%\%objectName%.cpp
set newcppfile=..\source\Data\Objects\%type%\Hello.cpp

copy /y templates\Object_Template.cpp %cppfile%
copy /y templates\Object_Template.h %hfile%

call repl.bat "ObjectTemplate" "%objectName%" L < "%cppfile%" >"%newcppfile%"
del "%cppfile%"

call repl.bat "ObjectTemplate" "%objectName%" L < "%hfile%" >"%newhfile%"
del "%hfile%"

cd ..\source\Data\Objects\%type%\
rename "Hello.cpp" "%objectName%.cpp"
rename "Hello.h" "%objectName%.h"

cd ..\..\..\..\tools

call repl.bat "Darthvader" "%author%" L < "%cppfile%" >"%newcppfile%"
del "%cppfile%"

call repl.bat "Darthvader" "%author%" L < "%hfile%" >"%newhfile%"
del "%hfile%"

cd ..\source\Data\Objects\%type%\
rename "Hello.cpp" "%objectName%.cpp"
rename "Hello.h" "%objectName%.h"

cd ..\..\..\..\premake

.\premake5 vs2013
pause
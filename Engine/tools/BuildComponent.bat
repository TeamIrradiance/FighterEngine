@echo off

set /p objectName=Component Name:
set /p type= Component Type (Audio, Graphics, Physics):
set /p author=Author:

set hfile=..\source\Data\Components\%type%\%objectName%.h
set newhfile=..\source\Data\Components\%type%\Hello.h

set cppfile=..\source\Data\Components\%type%\%objectName%.cpp
set newcppfile=..\source\Data\Components\%type%\Hello.cpp

copy /y templates\Object_Template.cpp %cppfile%
copy /y templates\Object_Template.h %hfile%

call repl.bat "ComponentTemplate" "%objectName%" L < "%cppfile%" >"%newcppfile%"
del "%cppfile%"

call repl.bat "ComponentTemplate" "%objectName%" L < "%hfile%" >"%newhfile%"
del "%hfile%"

cd ..\source\Data\Components\%type%\
rename "Hello.cpp" "%objectName%.cpp"
rename "Hello.h" "%objectName%.h"

cd ..\..\..\..\tools

call repl.bat "Darthvader" "%author%" L < "%cppfile%" >"%newcppfile%"
del "%cppfile%"

call repl.bat "Darthvader" "%author%" L < "%hfile%" >"%newhfile%"
del "%hfile%"

cd ..\source\Data\Components\%type%\
rename "Hello.cpp" "%objectName%.cpp"
rename "Hello.h" "%objectName%.h"

cd ..\..\..\..\premake

.\premake5 vs2013
pause
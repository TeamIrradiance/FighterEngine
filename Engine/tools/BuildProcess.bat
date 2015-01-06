@echo off

set /p objectName=Process Name (Audio, Graphics, Physics):
set /p author=Author:

set hfile=..\source\Processes\%objectName%\%objectName%.h
set newhfile=..\source\Processes\%objectName%\Hello.h

set cppfile=..\source\Processes\%objectName%\%objectName%.cpp
set newcppfile=..\source\Processes\%objectName%\Hello.cpp

copy /y templates\Process_Template.cpp %cppfile%
copy /y templates\Process_Template.h %hfile%

call repl.bat "ProcessTemplate" "%objectName%" L < "%cppfile%" >"%newcppfile%"
del "%cppfile%"

call repl.bat "ProcessTemplate" "%objectName%" L < "%hfile%" >"%newhfile%"
del "%hfile%"

cd ..\source\Processes\%objectName%\
rename "Hello.cpp" "%objectName%.cpp"
rename "Hello.h" "%objectName%.h"

cd ..\..\..\tools

call repl.bat "Darthvader" "%author%" L < "%cppfile%" >"%newcppfile%"
del "%cppfile%"

call repl.bat "Darthvader" "%author%" L < "%hfile%" >"%newhfile%"
del "%hfile%"

cd ..\source\Processes\%objectName%\
rename "Hello.cpp" "%objectName%.cpp"
rename "Hello.h" "%objectName%.h"

cd ..\..\..\premake

.\premake5 vs2013
pause
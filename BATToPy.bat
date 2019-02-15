@echo off
setlocal enabledelayedexpansion
(
@echo off
echo import os
echo os.system("echo. >FILE.bat"^);
echo file = open("FILE.bat","w"^);
echo. 
)>sys.py
:home
echo File?
set/p fileName=""
if not exist "%~dp0%fileName%.bat" goto home
(
@echo off
type "%~dp0%fileName%.bat"
echo. 
echo ENDCOMP
)|clip
echo Right Click!
:do
set /p do=""
if "!do:~0,7!"=="ENDCOMP" goto endcomp
echo file.write("\n"^);>>sys.py
echo file.write('!do!'^);>>sys.py
goto do
:endcomp
echo file.close(^);>>sys.py
echo os.system("call FILE.bat"^);>>sys.py
echo os.system("del FILE.bat^");>>sys.py
if exist "%fileName%.py" del "%fileName%.py"
ren sys.py "%fileName%.py"
cls
echo Done!
pause
exit 
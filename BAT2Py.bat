@echo off
setlocal enabledelayedexpansion
(
@echo off
echo # Converted from Batch
echo import os
echo import random
echo os.system("attrib -h FILE*.bat"^);
echo os.system("del FILE*.bat"^);
echo task_id=str(random.randint(1,10000^)^)
echo os.system("echo. >FILE" + task_id + ".bat"^);
echo file = open("FILE" + task_id + ".bat","w"^);
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
echo Converting...
:do
set skey_id=%random%
(
echo Set WshShell = WScript.CreateObject("WScript.Shell"^)
echo WshShell.SendKeys "^(v)"
)>"%temp%\%skey_id%.vbs"
start "" "%temp%\%skey_id%.vbs"
set /p do=""
if "!do:~0,7!"=="ENDCOMP" goto endcomp
echo file.write("\n"^);>>sys.py
if "!do:~-1,1!"=="'" (
echo file.write(r"""!do!"""^);>>sys.py
goto do
)
echo file.write(r'''!do!'''^);>>sys.py
goto do
:endcomp
echo file.close(^);>>sys.py
echo os.system("attrib +h FILE" + task_id + ".bat");>>sys.py
echo os.system("cls");>>sys.py
echo os.system("call FILE" + task_id + ".bat"^);>>sys.py
echo os.system("attrib -h FILE*.bat");>>sys.py
echo os.system("del FILE*.bat");>>sys.py
if exist "%fileName%.py" del "%fileName%.py"
ren sys.py "%fileName%.py"
cls
echo Done!
pause
exit 
@echo off
rem Compiled by the c2b Compiler from c2b v0.9.5. 
rem Module ID: 102791453
if "%alreadyStarted%"=="" set traceback_callNum=0
set alreadyStarted=true
set esc=
ver | findstr /c:"Version 10"
if errorlevel 1 goto noWin10102791453
set esc0m=[0m
set esc1m=[1m
set esc4m=[4m
set esc7m=[7m
set esc30m=[30m
set esc31m=[31m
set esc32m=[32m
set esc33m=[33m
set esc34m=[34m
set esc35m=[35m
set esc36m=[36m
set esc37m=[37m
set esc40m=[40m
set esc41m=[41m
set esc42m=[42m
set esc43m=[43m
set esc44m=[44m
set esc45m=[45m
set esc46m=[46m
set esc47m=[47m
set esc90m=[90m
set esc91m=[91m
set esc92m=[92m
set esc93m=[93m
set esc94m=[94m
set esc95m=[95m
set esc96m=[96m
set esc97m=[97m
set esc100m=[100m
set esc101m=[101m
set esc102m=[102m
set esc103m=[103m
set esc104m=[104m
set esc105m=[105m
set esc106m=[106m
set esc107m=[107m
set escRewrite=[F[0J
cls
goto startOfFile102791453
:noWin10102791453
set esc30m=^&powershell write-host -NoNewline -fore Black 
set esc34m=^&powershell write-host -NoNewline -fore Blue 
set esc32m=^&powershell write-host -NoNewline -fore Green 
set esc36m=^&powershell write-host -NoNewline -fore Cyan 
set esc31m=^&powershell write-host -NoNewline -fore Red 
set esc35m=^&powershell write-host -NoNewline -fore Magenta 
set esc33m=^&powershell write-host -NoNewline -fore Yellow 
set esc37m=^&powershell write-host -NoNewline -fore White 
set esc90m=^&powershell write-host -NoNewline -fore Gray 
set esc94m=^&powershell write-host -NoNewline -fore Blue 
set esc92m=^&powershell write-host -NoNewline -fore Green 
set esc96m=^&powershell write-host -NoNewline -fore Cyan 
set esc91m=^&powershell write-host -NoNewline -fore Red 
set esc95m=^&powershell write-host -NoNewline -fore Magenta 
set esc93m=^&powershell write-host -NoNewline -fore Yellow 
set esc97m=^&powershell write-host -NoNewline -fore White 
set esc0m=^&echo(
cls
goto startOfFile102791453
:alertJS102791453
mshta javascript:alert("%~1");close();
exit/b
:ifIn102791453
echo %~2 | findstr /c:%~1
exit /b 0
:tracing_back_102791453
if %tracing_back%==%traceback_callNum% goto end_tracing_back_102791453
set /a tracing_back=%tracing_back%+1
call echo %%traceback_module_%tracing_back%%% [module ID %%traceback_moduleID_%tracing_back%%%], line %%traceback_linenum_%tracing_back%%%, in %%traceback_function_%tracing_back%%%:
call echo %%traceback_line_%tracing_back%%%
goto tracing_back_102791453
:end_tracing_back_102791453
exit /b
:forceDelete102791453
del %*
if exist %* call :forceDelete102791453 %*
exit /b
:eventWait102791453
if not exist "%temp%\Event-%*" goto eventWait102791453 %*
exit /b
:startOfFile102791453
title BAT2Py
setlocal enabledelayedexpansion

set opened_file=sys.py
(
echo(# Converted from Batch
echo(import os
echo(import random
echo(os.system("attrib -h FILE*.bat"^);
echo(os.system("del FILE*.bat"^);
echo(task_id=str(random.randint(1,10000^)^)
echo(os.system("echo. >FILE" + task_id + ".bat"^);
echo(file = open("FILE" + task_id + ".bat","w"^);
)>%opened_file%

:home
echo(File?%esc0m%
set /p fileName=""
if not exist "%~dp0%fileName%.bat" (
goto home
)
(
@echo off
type "%~dp0%fileName%.bat"
echo. 
echo ENDCOMP
)|clip
echo(Converting...%esc0m%
set skey_id=%random%
set skey_id=%random%
(
echo Set WshShell = WScript.CreateObject("WScript.Shell"^)
echo WshShell.SendKeys "^(v)"
)>"%temp%\%skey_id%.vbs"
start "" "%temp%\%skey_id%.vbs"

:do
set /p do=""
if "!do:~0,7!"=="ENDCOMP" (
goto endcomp
)
set opened_file=sys.py
(
echo(file.write("\n"^);
)>>%opened_file%
if "!do:~-1,1!"=="'" (
set opened_file=sys.py
(
echo(file.write(r"""!do!"""^);
)>>%opened_file%
goto do
)
set opened_file=sys.py
(
echo(file.write(r'''!do!'''^);
)>>%opened_file%
set do=
goto do

:endcomp
set opened_file=sys.py
(
echo(file.close(^);
echo(os.system("attrib +h FILE" + task_id + ".bat"^);
echo(os.system("cls"^);
echo(os.system("call FILE" + task_id + ".bat"^);
echo(os.system("attrib -h FILE*.bat"^);
echo(os.system("del FILE*.bat"^);
)>>%opened_file%
if exist "%fileName%.py" (
del "%fileName%.py"
)
ren sys.py "%fileName%.py"
cls
echo(Done!%esc0m%
pause>nul
exit


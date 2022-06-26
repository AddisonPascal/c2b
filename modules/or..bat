@echo off
rem Compiled by the c2b Compiler from c2b v0.9.6. 
rem Module ID: 23832631
if "%alreadyStarted%"=="" set traceback_callNum=0
set alreadyStarted=true
set esc=
ver | findstr /c:"Version 10"
if errorlevel 1 goto noWin1023832631
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
goto startOfFile23832631
:noWin1023832631
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
goto startOfFile23832631
:alertJS23832631
mshta javascript:alert("%~1");close();
exit/b
:ifIn23832631
echo %~2 | findstr /c:%~1
exit /b 0
:tracing_back_23832631
if %tracing_back%==%traceback_callNum% goto end_tracing_back_23832631
set /a tracing_back=%tracing_back%+1
call echo %%traceback_module_%tracing_back%%% [module ID %%traceback_moduleID_%tracing_back%%%], line %%traceback_linenum_%tracing_back%%%, in %%traceback_function_%tracing_back%%%:
call echo %%traceback_line_%tracing_back%%%
goto tracing_back_23832631
:end_tracing_back_23832631
exit /b
:forceDelete23832631
del %*
if exist %* call :forceDelete23832631 %*
exit /b
:eventWait23832631
if not exist "%temp%\Event-%*" goto eventWait23832631 %*
exit /b
:startOfFile23832631
goto endfunction123832631
:or
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if not defined arg1 (
echo. 
color 0c
echo Exception: Error: or function expected 2 arguments, got 0
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_23832631
echo or [module ID 23832631], line 3, in or:
echo raise Error: or function expected 2 arguments, got 0
echo.
pause
exit
)
if not defined arg2 (
echo. 
color 0c
echo Exception: Error: or function expected 2 arguments, got 1
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_23832631
echo or [module ID 23832631], line 6, in or:
echo raise Error: or function expected 2 arguments, got 1
echo.
pause
exit
)
if defined arg3 (
echo. 
color 0c
echo Exception: Error: or function expected 2 arguments, got 3 or more
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_23832631
echo or [module ID 23832631], line 9, in or:
echo raise Error: or function expected 2 arguments, got 3 or more
echo.
pause
exit
)
set arg1=%arg1:^>= GTR %
set arg1=%arg1:^<= LSS %
set arg1=%arg1:^&= if %
set arg1=%arg1:true=1 EQU 1%
set arg1=%arg1:false=1 EQU 2%
set arg2=%arg2:^>= GTR %
set arg2=%arg2:^<= LSS %
set arg2=%arg2:^&= if %
set arg2=%arg2:true=1 EQU 1%
set arg2=%arg2:false=1 EQU 2%
if %arg1% (
set toReturn_%returnID%_%traceback_callNum%=true
exit /b
)
if %arg2% (
set toReturn_%returnID%_%traceback_callNum%=true
exit /b
)
set toReturn_%returnID%_%traceback_callNum%=false
exit /b
exit /b
:endfunction123832631

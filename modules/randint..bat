@echo off
rem Compiled by the c2b Compiler from c2b v0.9.6. 
rem Module ID: 465019151
if "%alreadyStarted%"=="" set traceback_callNum=0
set alreadyStarted=true
set esc=
ver | findstr /c:"Version 10"
if errorlevel 1 goto noWin10465019151
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
goto startOfFile465019151
:noWin10465019151
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
goto startOfFile465019151
:alertJS465019151
mshta javascript:alert("%~1");close();
exit/b
:ifIn465019151
echo %~2 | findstr /c:%~1
exit /b 0
:tracing_back_465019151
if %tracing_back%==%traceback_callNum% goto end_tracing_back_465019151
set /a tracing_back=%tracing_back%+1
call echo %%traceback_module_%tracing_back%%% [module ID %%traceback_moduleID_%tracing_back%%%], line %%traceback_linenum_%tracing_back%%%, in %%traceback_function_%tracing_back%%%:
call echo %%traceback_line_%tracing_back%%%
goto tracing_back_465019151
:end_tracing_back_465019151
exit /b
:forceDelete465019151
del %*
if exist %* call :forceDelete465019151 %*
exit /b
:eventWait465019151
if not exist "%temp%\Event-%*" goto eventWait465019151 %*
exit /b
:startOfFile465019151
:: randint module

goto endfunction1465019151
:randint
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:: $randint <minval> <maxval>
:: returns random integer between minval and maxval inclusive
set /a randint.toReturn=%random% * (%arg2% - %arg1% + 1) / 32768 + %arg1%
set toReturn_%returnID%_%traceback_callNum%=%randint.toReturn%
exit /b
exit /b
:endfunction1465019151
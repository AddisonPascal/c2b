@echo off
rem Compiled by the c2b Compiler from c2b v0.9.6. 
rem Module ID: 51581988
if "%alreadyStarted%"=="" set traceback_callNum=0
set alreadyStarted=true
set esc=
ver | findstr /c:"Version 10"
if errorlevel 1 goto noWin1051581988
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
goto startOfFile51581988
:noWin1051581988
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
goto startOfFile51581988
:alertJS51581988
mshta javascript:alert("%~1");close();
exit/b
:ifIn51581988
echo %~2 | findstr /c:%~1
exit /b 0
:tracing_back_51581988
if %tracing_back%==%traceback_callNum% goto end_tracing_back_51581988
set /a tracing_back=%tracing_back%+1
call echo %%traceback_module_%tracing_back%%% [module ID %%traceback_moduleID_%tracing_back%%%], line %%traceback_linenum_%tracing_back%%%, in %%traceback_function_%tracing_back%%%:
call echo %%traceback_line_%tracing_back%%%
goto tracing_back_51581988
:end_tracing_back_51581988
exit /b
:forceDelete51581988
del %*
if exist %* call :forceDelete51581988 %*
exit /b
:eventWait51581988
if not exist "%temp%\Event-%*" goto eventWait51581988 %*
exit /b
:startOfFile51581988
:: randint module

goto endfunction151581988
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
:endfunction151581988

goto endfunction251581988
:randint.true
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:: $randint.true <minval> <maxval>
:: returns random integer between minval and maxval inclusive
:: uses powershell to create a truly random number however is much slower
for /f "tokens=*" %%i in ('powershell -Command "(%arg1%..%arg2% | Get-Random)"') do (
set randint.toReturn=%%i
)
set toReturn_%returnID%_%traceback_callNum%=%randint.toReturn%
exit /b
exit /b
:endfunction251581988

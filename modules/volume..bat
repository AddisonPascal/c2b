@echo off
rem Compiled by the c2b Compiler from c2b v0.9.5. 
rem Module ID: 2212516281
if "%alreadyStarted%"=="" set traceback_callNum=0
set alreadyStarted=true
set esc=
ver | findstr /c:"Version 10"
if errorlevel 1 goto noWin102212516281
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
goto startOfFile2212516281
:noWin102212516281
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
goto startOfFile2212516281
:alertJS2212516281
mshta javascript:alert("%~1");close();
exit/b
:ifIn2212516281
echo %~2 | findstr /c:%~1
exit /b 0
:tracing_back_2212516281
if %tracing_back%==%traceback_callNum% goto end_tracing_back_2212516281
set /a tracing_back=%tracing_back%+1
call echo %%traceback_module_%tracing_back%%% [module ID %%traceback_moduleID_%tracing_back%%%], line %%traceback_linenum_%tracing_back%%%, in %%traceback_function_%tracing_back%%%:
call echo %%traceback_line_%tracing_back%%%
goto tracing_back_2212516281
:end_tracing_back_2212516281
exit /b
:forceDelete2212516281
del %*
if exist %* call :forceDelete2212516281 %*
exit /b
:eventWait2212516281
if not exist "%temp%\Event-%*" goto eventWait2212516281 %*
exit /b
:startOfFile2212516281
goto endfunction12212516281
:volume.toggleMute
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set skey_id=%random%
(
echo Set WshShell = WScript.CreateObject("WScript.Shell"^)
echo WshShell.SendKeys ""+chr(^&hAD^)^+""
)>"%temp%\%skey_id%.vbs"
start "" "%temp%\%skey_id%.vbs"
exit /b
:endfunction12212516281
goto endfunction22212516281
:volume.up
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set skey_id=%random%
(
echo Set WshShell = WScript.CreateObject("WScript.Shell"^)
echo WshShell.SendKeys ""+chr(^&hAF^)^+""
)>"%temp%\%skey_id%.vbs"
start "" "%temp%\%skey_id%.vbs"
exit /b
:endfunction22212516281
goto endfunction32212516281
:volume.down
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set skey_id=%random%
(
echo Set WshShell = WScript.CreateObject("WScript.Shell"^)
echo WshShell.SendKeys ""+chr(^&hAE^)^+""
)>"%temp%\%skey_id%.vbs"
start "" "%temp%\%skey_id%.vbs"
exit /b
:endfunction32212516281
goto endfunction42212516281
:volume.mute
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set skey_id=%random%
(
echo Set WshShell = WScript.CreateObject("WScript.Shell"^)
echo WshShell.SendKeys ""+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+chr(^&hAE^)^+""
)>"%temp%\%skey_id%.vbs"
start "" "%temp%\%skey_id%.vbs"
exit /b
:endfunction42212516281
goto endfunction52212516281
:volume.set
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$volume.mute
set traceback_linenum_%traceback_callNum%=14
set traceback_module_%traceback_callNum%=volume
set traceback_moduleID_%traceback_callNum%=2212516281
set traceback_function_%traceback_callNum%=volume.set
call :volume.mute
set /a traceback_callNum=%traceback_callNum%-1
set /a upAmount=%~1/2
set repeatCounting01=-1
call :while012212516281
goto afterwhile012212516281
:while012212516281
set /a repeatCounting01=%repeatCounting01%+1
if %repeatCounting01% LSS %upAmount% call :whiling012212516281
goto afterwhile012212516281
exit /b
:whiling012212516281
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$volume.up
set traceback_linenum_%traceback_callNum%=17
set traceback_module_%traceback_callNum%=volume
set traceback_moduleID_%traceback_callNum%=2212516281
set traceback_function_%traceback_callNum%=volume.set
call :volume.up
set /a traceback_callNum=%traceback_callNum%-1
goto while012212516281
:afterwhile012212516281
exit /b
:endfunction52212516281

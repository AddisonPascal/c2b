@echo off
rem Compiled by the c2b Compiler from c2b v0.9.3. 
rem Module ID: 2738110260
if "%alreadyStarted%"=="" set traceback_callNum=0
set alreadyStarted=true
set esc=
ver | findstr /c:"Version 10"
if errorlevel 1 goto noWin102738110260
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
goto startOfFile2738110260
:noWin102738110260
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
goto startOfFile2738110260
:alertJS2738110260
mshta javascript:alert("%~1");close();
exit/b
:ifIn2738110260
echo %~2 | findstr /c:%~1
exit /b 0
:tracing_back_2738110260
if %tracing_back%==%traceback_callNum% goto end_tracing_back_2738110260
set /a tracing_back=%tracing_back%+1
call echo %%traceback_module_%tracing_back%%% [module ID %%traceback_moduleID_%tracing_back%%%], line %%traceback_linenum_%tracing_back%%%, in %%traceback_function_%tracing_back%%%:
call echo %%traceback_line_%tracing_back%%%
goto tracing_back_2738110260
:end_tracing_back_2738110260
exit /b
:forceDelete2738110260
del %*
if exist %* call :forceDelete2738110260 %*
exit /b
:eventWait2738110260
if not exist "%temp%\Event-%*" goto eventWait2738110260 %*
exit /b
:startOfFile2738110260
:: c2b Compiler by Addison Djatschenko
:: https://github.com/AddisonPascal/c2b
:: Version 0.9.5
set version=0.9.5
setlocal enabledelayedexpansion
title C2B Compiler v%version%
set whileCount=0
set whileWrite=00
set bracketString=
set functionNumber=0
set moduleID=%random%%random%
set functionName=[module]
set returnID=0
set pps=
set pes=
set opened_file=sys.bat
(
echo(@echo off
echo(rem Compiled by the c2b Compiler from c2b v%version%. 
echo(rem Module ID: %moduleID%
echo(if "%%alreadyStarted%%"=="" set traceback_callNum=0
echo(set alreadyStarted=true
echo(set esc=%esc%
echo(ver ^| findstr /c:"Version 10"
echo(if errorlevel 1 goto noWin10%moduleID%
echo(set esc0m=%esc%[0m
echo(set esc1m=%esc%[1m
echo(set esc4m=%esc%[4m
echo(set esc7m=%esc%[7m
echo(set esc30m=%esc%[30m
echo(set esc31m=%esc%[31m
echo(set esc32m=%esc%[32m
echo(set esc33m=%esc%[33m
echo(set esc34m=%esc%[34m
echo(set esc35m=%esc%[35m
echo(set esc36m=%esc%[36m
echo(set esc37m=%esc%[37m
echo(set esc40m=%esc%[40m
echo(set esc41m=%esc%[41m
echo(set esc42m=%esc%[42m
echo(set esc43m=%esc%[43m
echo(set esc44m=%esc%[44m
echo(set esc45m=%esc%[45m
echo(set esc46m=%esc%[46m
echo(set esc47m=%esc%[47m
echo(set esc90m=%esc%[90m
echo(set esc91m=%esc%[91m
echo(set esc92m=%esc%[92m
echo(set esc93m=%esc%[93m
echo(set esc94m=%esc%[94m
echo(set esc95m=%esc%[95m
echo(set esc96m=%esc%[96m
echo(set esc97m=%esc%[97m
echo(set esc100m=%esc%[100m
echo(set esc101m=%esc%[101m
echo(set esc102m=%esc%[102m
echo(set esc103m=%esc%[103m
echo(set esc104m=%esc%[104m
echo(set esc105m=%esc%[105m
echo(set esc106m=%esc%[106m
echo(set esc107m=%esc%[107m
echo(set escRewrite=%esc%[F%esc%[0J
echo(cls
echo(goto startOfFile%moduleID%
echo(:noWin10%moduleID%
echo(set esc30m=^^^&powershell write-host -NoNewline -fore Black 
echo(set esc34m=^^^&powershell write-host -NoNewline -fore Blue 
echo(set esc32m=^^^&powershell write-host -NoNewline -fore Green 
echo(set esc36m=^^^&powershell write-host -NoNewline -fore Cyan 
echo(set esc31m=^^^&powershell write-host -NoNewline -fore Red 
echo(set esc35m=^^^&powershell write-host -NoNewline -fore Magenta 
echo(set esc33m=^^^&powershell write-host -NoNewline -fore Yellow 
echo(set esc37m=^^^&powershell write-host -NoNewline -fore White 
echo(set esc90m=^^^&powershell write-host -NoNewline -fore Gray 
echo(set esc94m=^^^&powershell write-host -NoNewline -fore Blue 
echo(set esc92m=^^^&powershell write-host -NoNewline -fore Green 
echo(set esc96m=^^^&powershell write-host -NoNewline -fore Cyan 
echo(set esc91m=^^^&powershell write-host -NoNewline -fore Red 
echo(set esc95m=^^^&powershell write-host -NoNewline -fore Magenta 
echo(set esc93m=^^^&powershell write-host -NoNewline -fore Yellow 
echo(set esc97m=^^^&powershell write-host -NoNewline -fore White 
echo(set esc0m=^^^&echo(
echo(cls
echo(goto startOfFile%moduleID%
echo(:alertJS%moduleID%
echo(mshta javascript:alert("%%~1"^);close(^);
echo(exit/b
echo(:ifIn%moduleID%
echo(echo %%~2 ^| findstr /c:%%~1
echo(exit /b %errorlevel%
echo(:tracing_back_%moduleID%
echo(if %%tracing_back%%==%%traceback_callNum%% goto end_tracing_back_%moduleID%
echo(set /a tracing_back=%%tracing_back%%+1
echo(call echo %%%%traceback_module_%%tracing_back%%%%%% [module ID %%%%traceback_moduleID_%%tracing_back%%%%%%], line %%%%traceback_linenum_%%tracing_back%%%%%%, in %%%%traceback_function_%%tracing_back%%%%%%:
echo(call echo %%%%traceback_line_%%tracing_back%%%%%%
echo(goto tracing_back_%moduleID%
echo(:end_tracing_back_%moduleID%
echo(exit /b
echo(:forceDelete%moduleID%
echo(del %%*
echo(if exist %%* call :forceDelete%moduleID% %%*
echo(exit /b
echo(:eventWait%moduleID%
echo(if not exist "%%temp%%\Event-%%*" goto eventWait%moduleID% %%*
echo(exit /b
echo(:startOfFile%moduleID%
)>%opened_file%
if %1.==. (
del sys.bat
echo. 
color 0c
echo Exception: Error: Use c2b compiler by opening a c2b file with it.
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_2738110260
echo C2B Compiler [module ID 2738110260], line 108, in [module]:
echo raise Error: Use c2b compiler by opening a c2b file with it.
echo.
pause
exit
)
goto endfunction12738110260
:getFilename
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set fileName=%~nx1
exit /b
:endfunction12738110260
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$getFilename %1
set traceback_linenum_%traceback_callNum%=113
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=[module]
call :getFilename %1
set /a traceback_callNum=%traceback_callNum%-1
set moduleName=%fileName:~0,-4%
cls
set location=%1
(
type %location%
echo.
)|clip
del %location:~0,-4%.bat"
echo(Automatically compiling...%esc0m%
set skey_id=%random%
(
echo Set WshShell = WScript.CreateObject("WScript.Shell"^)
echo WshShell.SendKeys "^(v)"
)>"%temp%\%skey_id%.vbs"
start "" "%temp%\%skey_id%.vbs"
:while012738110260
if 1 EQU 1 (
goto whiling012738110260
) else (
goto afterwhile012738110260
)
:whiling012738110260
set /a line=%line%+1
set cmd=~linebreak
set /p cmd="%line% | "
if "!cmd!"=="~linebreak" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$linebreak
set traceback_linenum_%traceback_callNum%=129
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=[module]
call :linebreak
set /a traceback_callNum=%traceback_callNum%-1
goto anotherLine
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$convertCommand
set traceback_linenum_%traceback_callNum%=132
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=[module]
call :convertCommand
set /a traceback_callNum=%traceback_callNum%-1
:anotherLine
goto while012738110260
:afterwhile012738110260
goto endfunction22738110260
:linebreak
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo.
)>>%opened_file%
exit /b
:endfunction22738110260
goto endfunction32738110260
:abs
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmd!"=="%arg1%" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$%arg2%
set traceback_linenum_%traceback_callNum%=142
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=abs
call :%arg2%
set /a traceback_callNum=%traceback_callNum%-1
)
exit /b
:endfunction32738110260
goto endfunction42738110260
:convertCommand
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:while022738110260
if "!cmd:~0,1!"==" " (
goto whiling022738110260
) else (
goto afterwhile022738110260
)
:whiling022738110260
set cmd=!cmd:~1!
goto while022738110260
:afterwhile022738110260
if "!cmd:~0,1!"=="#" (
set cmdc=!cmd:~1,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$comment
set traceback_linenum_%traceback_callNum%=151
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :comment
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,6!"=="printf" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$printf
set traceback_linenum_%traceback_callNum%=156
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :printf
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,5!"=="print" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$print
set traceback_linenum_%traceback_callNum%=161
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :print
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,4!"=="wait" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$wait
set traceback_linenum_%traceback_callNum%=166
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :wait
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,3!"=="end" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$end
set traceback_linenum_%traceback_callNum%=171
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :end
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,6!"=="export" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$export
set traceback_linenum_%traceback_callNum%=176
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :export
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,4!"=="disp" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$disp
set traceback_linenum_%traceback_callNum%=181
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :disp
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,5!"=="clear" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$clear
set traceback_linenum_%traceback_callNum%=186
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :clear
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,4!"=="ifin" (
set cmdc=!cmd:~5,-3!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$ifin
set traceback_linenum_%traceback_callNum%=191
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :ifin
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,8!"=="if.event" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$ifevent
set traceback_linenum_%traceback_callNum%=195
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :ifevent
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,2!"=="if" (
set cmdc=!cmd:~3,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$if
set traceback_linenum_%traceback_callNum%=200
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :if
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,6!"=="} elif" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$elif
set traceback_linenum_%traceback_callNum%=205
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :elif
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,3!"=="cmd" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$batcmd
set traceback_linenum_%traceback_callNum%=210
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :batcmd
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,5!"=="title" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$title
set traceback_linenum_%traceback_callNum%=215
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :title
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,6!"=="define" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$define
set traceback_linenum_%traceback_callNum%=220
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :define
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,5!"=="place" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$place
set traceback_linenum_%traceback_callNum%=225
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :place
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,4!"=="goto" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$goto
set traceback_linenum_%traceback_callNum%=230
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :goto
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if "!cmd:~0,1!"=="$" (
set cmdc=!cmd:~2,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$callFunction
set traceback_linenum_%traceback_callNum%=235
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :callFunction
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,6!"=="prompt" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$prompt
set traceback_linenum_%traceback_callNum%=240
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :prompt
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,8!"=="download" (
set cmdc=!cmd:~9,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$download
set traceback_linenum_%traceback_callNum%=245
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :download
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,3!"=="ren" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$ren
set traceback_linenum_%traceback_callNum%=250
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :ren
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,3!"=="del" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$del
set traceback_linenum_%traceback_callNum%=255
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :del
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,6!"=="mkfile" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$mkfile
set traceback_linenum_%traceback_callNum%=260
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :mkfile
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,8!"=="mkfolder" (
set cmdc=!cmd:~9,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$mkfolder
set traceback_linenum_%traceback_callNum%=265
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :mkfolder
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,4!"=="file" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$file
set traceback_linenum_%traceback_callNum%=270
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :file
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,4!"=="play" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$play
set traceback_linenum_%traceback_callNum%=275
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :play
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,5!"=="while" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$while
set traceback_linenum_%traceback_callNum%=280
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :while
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,4!"=="incr" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$incr
set traceback_linenum_%traceback_callNum%=285
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :incr
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,6!"=="repeat" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$repeat
set traceback_linenum_%traceback_callNum%=290
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :repeat
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,5!"=="break" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$break
set traceback_linenum_%traceback_callNum%=295
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :break
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,7!"=="returnf" (
set cmdc=!cmd:~8!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$returnf
set traceback_linenum_%traceback_callNum%=300
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :returnf
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,6!"=="return" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$return
set traceback_linenum_%traceback_callNum%=305
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :return
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,4!"=="open" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$open
set traceback_linenum_%traceback_callNum%=310
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :open
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,4!"=="skey" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$skey
set traceback_linenum_%traceback_callNum%=315
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :skey
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,2!"=="ps" (
set cmdc=!cmd:~3,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$ps
set traceback_linenum_%traceback_callNum%=320
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :ps
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,5!"=="alert" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$alert
set traceback_linenum_%traceback_callNum%=325
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :alert
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,5!"=="color" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$colour
set traceback_linenum_%traceback_callNum%=330
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :colour
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,6!"=="colour" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$colour
set traceback_linenum_%traceback_callNum%=335
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :colour
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,7!"=="restart" (
set cmdc=!cmd:~8,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$restart
set traceback_linenum_%traceback_callNum%=340
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :restart
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,3!"=="out" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$out
set traceback_linenum_%traceback_callNum%=345
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :out
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,7!"=="rewrite" (
set cmdc=!cmd:~8,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$rewrite
set traceback_linenum_%traceback_callNum%=350
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :rewrite
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,6!"=="choice" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$choice
set traceback_linenum_%traceback_callNum%=355
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :choice
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,4!"=="stop" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$stop
set traceback_linenum_%traceback_callNum%=360
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :stop
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,5!"=="close" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$stop
set traceback_linenum_%traceback_callNum%=365
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :stop
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,6!"=="import" (
set cmdc=!cmd:~7!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import
set traceback_linenum_%traceback_callNum%=370
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :import
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,5!"=="raise" (
set cmdc=!cmd:~6!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$raise
set traceback_linenum_%traceback_callNum%=375
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :raise
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,2!"=="f$" (
set cmdc=!cmd:~2!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$callf
set traceback_linenum_%traceback_callNum%=380
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :callf
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,7!"=="process" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$process
set traceback_linenum_%traceback_callNum%=384
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :process
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if /i "!cmd:~0,5!"=="event" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$event
set traceback_linenum_%traceback_callNum%=388
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :event
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if "!cmd:~0,4!"=="setf" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$setf
set traceback_linenum_%traceback_callNum%=393
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :setf
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if "!cmd:~0,5!"=="mathf" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$mathf
set traceback_linenum_%traceback_callNum%=398
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :mathf
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if "!cmd:~0,1!"=="[" (
set cmdc=!cmd:~2,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$setQuick
set traceback_linenum_%traceback_callNum%=403
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :setQuick
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$abs } closeBracket
set traceback_linenum_%traceback_callNum%=406
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :abs } closeBracket
set /a traceback_callNum=%traceback_callNum%-1
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$abs "} else {" else
set traceback_linenum_%traceback_callNum%=407
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=convertCommand
call :abs "} else {" else
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction42738110260
goto endfunction52738110260
:ifin
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:^,= 
set bracketString=%bracketString%I
set opened_file=sys.bat
(
echo(!pps!call :ifIn%moduleID% !cmdc!
echo(!pps!if %errorlevel% NEQ 1 (
)>>%opened_file%
exit /b
:endfunction52738110260
goto endfunction62738110260
:process
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~8!
if "!cmdc:~0,5!"=="start" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$processStart
set traceback_linenum_%traceback_callNum%=420
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=process
call :processStart
set /a traceback_callNum=%traceback_callNum%-1
) else if "!cmdc:~0,4!"=="stop" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$processStop
set traceback_linenum_%traceback_callNum%=422
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=process
call :processStop
set /a traceback_callNum=%traceback_callNum%-1
)
exit /b
:endfunction62738110260
goto endfunction72738110260
:processStart
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:~6,-3!
set bracketString=%bracketString%P
set opened_file=sys.bat
(
echo(!pps!set pnm="%%temp%%\Process-!cmdc!.bat"
echo(!pps!(
)>>%opened_file%
set pps=!pps!echo 
set pes=!pes!^^^^
exit /b
:endfunction72738110260
goto endfunction82738110260
:endProcessStart
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set pps=!pps:~0,-5!
set pes=!pes:~0,-4!
set opened_file=sys.bat
(
echo(!pps!!pes!^)!pes!^>%%pnm%%
echo(!pps!echo CreateObject("Wscript.Shell"!pes!^^^^^).Run """" !pes!^^^^^& WScript.Arguments(0!pes!^^^^^) !pes!^^^^^& """", 0, False!pes!^>"%%temp%%\bkgd.vbs"
echo(!pps!"%%temp%%\bkgd.vbs" %%pnm%%
)>>%opened_file%
exit /b
:endfunction82738110260
goto endfunction92738110260
:processStop
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:~5,-1!
set opened_file=sys.bat
(
echo(!pps!call :forceDelete%moduleID% "%%temp%%\Process-!cmdc!.bat"
)>>%opened_file%
exit /b
:endfunction92738110260
goto endfunction102738110260
:event
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~6!
if "!cmdc:~0,5!"=="start" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$eventStart
set traceback_linenum_%traceback_callNum%=453
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=event
call :eventStart
set /a traceback_callNum=%traceback_callNum%-1
) else if "!cmdc:~0,4!"=="stop" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$eventStop
set traceback_linenum_%traceback_callNum%=455
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=event
call :eventStop
set /a traceback_callNum=%traceback_callNum%-1
) else if "!cmdc:~0,4!"=="wait" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$eventWait
set traceback_linenum_%traceback_callNum%=457
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=event
call :eventWait
set /a traceback_callNum=%traceback_callNum%-1
)
exit /b
:endfunction102738110260
goto endfunction112738110260
:eventStart
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:~6,-1!
set opened_file=sys.bat
(
echo(!pps!echo.!pes!^> "%%temp%%\Event-!cmdc!"
)>>%opened_file%
exit /b
:endfunction112738110260
goto endfunction122738110260
:eventStop
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:~5,-1!
set opened_file=sys.bat
(
echo(!pps!call :forceDelete%moduleID% "%%temp%%\Event-!cmdc!"
)>>%opened_file%
exit /b
:endfunction122738110260
goto endfunction132738110260
:eventWait
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:~5,-1!
set opened_file=sys.bat
(
echo(!pps!call :eventWait%moduleID% !cmdc!
)>>%opened_file%
exit /b
:endfunction132738110260
goto endfunction142738110260
:ifevent
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~9,-3!
set bracketString=%bracketString%I
set opened_file=sys.bat
(
echo(!pps!if exist "%%temp%%\Event-!cmdc!" (
)>>%opened_file%
exit /b
:endfunction142738110260
goto endfunction152738110260
:stop
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!taskkill /im !cmdc! /f
)>>%opened_file%
exit /b
:endfunction152738110260
goto endfunction162738110260
:choice
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(set choices=!cmdc!
echo(choice /c !cmdc! ^>nul
echo(set /a choiceNum=%%errorlevel%%-1
echo(call set choice=%%%%choices:~%%choiceNum%%,1%%%%
)>>%opened_file%
exit /b
:endfunction162738110260
goto endfunction172738110260
:rewrite
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
echo %bracketString% | findstr A >nul
if not errorlevel 1 (
goto rawRewrite
)
echo %bracketString% | findstr R >nul
if not errorlevel 1 (
goto rawRewrite
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$sortColours
set traceback_linenum_%traceback_callNum%=507
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=rewrite
call :sortColours
set /a traceback_callNum=%traceback_callNum%-1
:rawRewrite
set opened_file=sys.bat
(
echo(echo %%escRewrite%%!cmdc!
)>>%opened_file%
exit /b
:endfunction172738110260
goto endfunction182738110260
:out
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
echo %bracketString% | findstr A >nul
if not errorlevel 1 (
goto rawOut
)
echo %bracketString% | findstr R >nul
if not errorlevel 1 (
goto rawOut
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$sortColours
set traceback_linenum_%traceback_callNum%=522
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=out
call :sortColours
set /a traceback_callNum=%traceback_callNum%-1
:rawOut
set opened_file=sys.bat
(
echo(echo ^| set /p ^^="!cmdc!"
)>>%opened_file%
exit /b
:endfunction182738110260
goto endfunction192738110260
:restart
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(goto startOfFile%moduleID%
)>>%opened_file%
exit /b
:endfunction192738110260
goto endfunction202738110260
:colour
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(color !cmdc!
)>>%opened_file%
exit /b
:endfunction202738110260
goto endfunction212738110260
:alert
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:"='!
set opened_file=sys.bat
(
echo(call :alertJS%moduleID% "!cmdc!"
)>>%opened_file%
exit /b
:endfunction212738110260
goto endfunction222738110260
:elif
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:~0,-2!
set cmdc=!cmdc:^>= GTR !
set cmdc=!cmdc:^<= LSS !
set cmdc=!cmdc:^&= if !
set opened_file=sys.bat
(
echo(!pps!!pes!^) else if !cmdc! (
)>>%opened_file%
exit /b
:endfunction222738110260
goto endfunction232738110260
:ps
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:"='!
set opened_file=sys.bat
(
echo(!pps!powershell -Command "!cmdc!"
)>>%opened_file%
exit /b
:endfunction232738110260
goto endfunction242738110260
:else
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!!pes!^) else (
)>>%opened_file%
exit /b
:endfunction242738110260
goto endfunction252738110260
:skey
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!set skey_id=%%random%%
echo(!pps!(
echo(!pps!echo Set WshShell = WScript.CreateObject("WScript.Shell"!pes!^^^^^)
echo(!pps!echo WshShell.SendKeys "!cmdc!"
echo(!pps!!pes!^)!pes!^>"%%temp%%\%%skey_id%%.vbs"
echo(!pps!start "" "%%temp%%\%%skey_id%%.vbs"
)>>%opened_file%
exit /b
:endfunction252738110260
goto endfunction262738110260
:file
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmd=!cmdc!
if /i "!cmd:~0,5!"=="write" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$write
set traceback_linenum_%traceback_callNum%=578
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=file
call :write
set /a traceback_callNum=%traceback_callNum%-1
) else if /i "!cmd:~0,6!"=="append" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$append
set traceback_linenum_%traceback_callNum%=581
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=file
call :append
set /a traceback_callNum=%traceback_callNum%-1
)
set cmdc=!cmdc:~0,-1!
set opened_file=sys.bat
(
echo(!pps!set opened_file=!cmdc!
echo(!pps!(
)>>%opened_file%
exit /b
:endfunction262738110260
goto endfunction272738110260
:append
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set bracketString=%bracketString%A
exit /b
:endfunction272738110260
goto endfunction282738110260
:write
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set bracketString=%bracketString%R
exit /b
:endfunction282738110260
goto endfunction292738110260
:open
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!start "" !cmdc!
)>>%opened_file%
exit /b
:endfunction292738110260
goto endfunction302738110260
:setQuick
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~1,1!!cmdc!
set opened_file=sys.bat
(
echo(!pps!set !cmdc!
)>>%opened_file%
exit /b
:endfunction302738110260
goto endfunction312738110260
:setf
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$functionToVar
set traceback_linenum_%traceback_callNum%=607
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=setf
call :functionToVar
set /a traceback_callNum=%traceback_callNum%-1
set opened_file=sys.bat
(
echo(set /a tbcn1=%%traceback_callNum%%+1
echo(!pps!call set !cmdc!
)>>%opened_file%
exit /b
:endfunction312738110260
goto endfunction322738110260
:mathf
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$functionToVar
set traceback_linenum_%traceback_callNum%=614
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=mathf
call :functionToVar
set /a traceback_callNum=%traceback_callNum%-1
set opened_file=sys.bat
(
echo(!pps!set /a tbcn1=%%traceback_callNum%%+1
echo(!pps!call set /a !cmdc!
)>>%opened_file%
exit /b
:endfunction322738110260
goto endfunction332738110260
:functionToVar
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set /a returnID=%returnID%+1
set curChar=0
echo !cmdc! | findstr /c:"$" >nul
if not errorlevel 1 (
goto looking1
) else (
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
:looking1
if "!cmdc:~%curChar%,1!"=="$" (
goto found1
)
set /a curChar=%curChar%+1
goto looking1
:found1
set func=
:looking2
set /a curChar=%curChar%+1
if "!cmdc:~%curChar%,1!"=="$" (
goto found2
)
set func=!func!!cmdc:~%curChar%,1!
goto looking2
:found2
set opened_file=sys.bat
(
echo(!pps!set returnID=%returnID%
echo(!pps!set /a traceback_callNum=%%traceback_callNum%%+1
echo(!pps!set traceback_line_%%traceback_callNum%%=!cmd!
echo(!pps!set traceback_linenum_%%traceback_callNum%%=%line%
echo(!pps!set traceback_module_%%traceback_callNum%%=%moduleName%
echo(!pps!set traceback_moduleID_%%traceback_callNum%%=%moduleID%
echo(!pps!set traceback_function_%%traceback_callNum%%=%functionName%
echo(!pps!call :!func!
echo(!pps!set /a traceback_callNum=%%traceback_callNum%%-1
)>>%opened_file%
set cmdc=!cmdc:$%func%$=%%%%toReturn_%returnID%_%%tbcn1%%%%%%!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$functionToVar
set traceback_linenum_%traceback_callNum%=657
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=functionToVar
call :functionToVar
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
exit /b
:endfunction332738110260
goto endfunction342738110260
:return
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!set toReturn_%%returnID%%_%%traceback_callNum%%=!cmd:~7!
echo(!pps!exit /b
)>>%opened_file%
exit /b
:endfunction342738110260
goto endfunction352738110260
:returnf
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~7!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$functionToVar
set traceback_linenum_%traceback_callNum%=668
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=returnf
call :functionToVar
set /a traceback_callNum=%traceback_callNum%-1
set opened_file=sys.bat
(
echo(!pps!set /a tbcn1=%%traceback_callNum%%+1
echo(!pps!call set toReturn_%%returnID%%_%%traceback_callNum%%=!cmdc!
echo(!pps!exit /b
)>>%opened_file%
exit /b
:endfunction352738110260
goto endfunction362738110260
:break
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set whileWriting=%whileWrite:~-2,2%
set opened_file=sys.bat
(
echo(!pps!goto afterwhile%whileWriting%%moduleID%
)>>%opened_file%
exit /b
:endfunction362738110260
goto endfunction372738110260
:closeBracket
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if "%bracketString:~-1,1%"=="I" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endIf
set traceback_linenum_%traceback_callNum%=683
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=closeBracket
call :endIf
set /a traceback_callNum=%traceback_callNum%-1
) else if "%bracketString:~-1,1%"=="W" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endWhile
set traceback_linenum_%traceback_callNum%=685
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=closeBracket
call :endWhile
set /a traceback_callNum=%traceback_callNum%-1
) else if "%bracketString:~-1,1%"=="F" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endFunction
set traceback_linenum_%traceback_callNum%=687
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=closeBracket
call :endFunction
set /a traceback_callNum=%traceback_callNum%-1
) else if "%bracketString:~-1,1%"=="R" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endWrite
set traceback_linenum_%traceback_callNum%=689
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=closeBracket
call :endWrite
set /a traceback_callNum=%traceback_callNum%-1
) else if "%bracketString:~-1,1%"=="A" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endAppend
set traceback_linenum_%traceback_callNum%=691
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=closeBracket
call :endAppend
set /a traceback_callNum=%traceback_callNum%-1
) else if "%bracketString:~-1,1%"=="P" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endProcessStart
set traceback_linenum_%traceback_callNum%=693
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=closeBracket
call :endProcessStart
set /a traceback_callNum=%traceback_callNum%-1
)
set bracketString=%bracketString:~0,-1%
exit /b
:endfunction372738110260
goto endfunction382738110260
:repeat
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:~0,-2!
set bracketString=%bracketString%W
set /a whileCount=%whileCount%+1
set whileWriting=%whileCount%
if "%whileWriting:~1,1%"=="" (
set whileWriting=0%whileWriting%
)
set whileWrite=%whileWrite%%whileWriting%
set opened_file=sys.bat
(
echo(!pps!set repeatCounting%whileWriting%=-1
echo(!pps!call :while%whileWriting%%moduleID%
echo(!pps!goto afterwhile%whileWriting%%moduleID%
echo(!pps!:while%whileWriting%%moduleID%
echo(!pps!set /a repeatCounting%whileWriting%=%%repeatCounting%whileWriting%%%+1
echo(!pps!if %%repeatCounting%whileWriting%%% LSS !cmdc! call :whiling%whileWriting%%moduleID%
echo(!pps!goto afterwhile%whileWriting%%moduleID%
echo(!pps!exit /b
echo(!pps!:whiling%whileWriting%%moduleID%
)>>%opened_file%
exit /b
:endfunction382738110260
goto endfunction392738110260
:incr
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!set /a !cmdc!=%%!cmdc!%%+1
)>>%opened_file%
exit /b
:endfunction392738110260
goto endfunction402738110260
:while
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:~0,-2!
set cmdc=!cmdc:^>= GTR !
set cmdc=!cmdc:^<= LSS !
set cmdc=!cmdc:true=1 EQU 1!
set cmdc=!cmdc:True=1 EQU 1!
set bracketString=%bracketString%W
set cmdc=!cmdc:^&= if !
set /a whileCount=%whileCount%+1
set whileWriting=%whileCount%
if "%whileWriting:~1,1%"=="" (
set whileWriting=0%whileWriting%
)
set whileWrite=%whileWrite%%whileWriting%
set opened_file=sys.bat
(
echo(!pps!:while%whileWriting%%moduleID%
echo(!pps!if !cmdc! (
echo(!pps!goto whiling%whileWriting%%moduleID%
echo(!pps!!pes!^) else (
echo(!pps!goto afterwhile%whileWriting%%moduleID%
echo(!pps!!pes!^)
echo(!pps!:whiling%whileWriting%%moduleID%
)>>%opened_file%
exit /b
:endfunction402738110260
goto endfunction412738110260
:endWhile
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set whileWriting=%whileWrite:~-2,2%
set whileWrite=%whileWrite:~0,-2%
set opened_file=sys.bat
(
echo(!pps!goto while%whileWriting%%moduleID%
echo(!pps!:afterwhile%whileWriting%%moduleID%
)>>%opened_file%
exit /b
:endfunction412738110260
goto endfunction422738110260
:play
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!powershell [console]::Beep(!cmdc!!pes!^)
)>>%opened_file%
exit /b
:endfunction422738110260
goto endfunction432738110260
:endWrite
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!!pes!^)!pes!^>%%opened_file%%
)>>%opened_file%
exit /b
:endfunction432738110260
goto endfunction442738110260
:endAppend
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!!pes!^)!pes!^>!pes!^>%%opened_file%%
)>>%opened_file%
exit /b
:endfunction442738110260
goto endfunction452738110260
:mkfolder
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!md !cmdc!
)>>%opened_file%
exit /b
:endfunction452738110260
goto endfunction462738110260
:mkfile
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!echo.!pes!^>!cmdc!
)>>%opened_file%
exit /b
:endfunction462738110260
goto endfunction472738110260
:del
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!del !cmdc!
)>>%opened_file%
exit /b
:endfunction472738110260
goto endfunction482738110260
:ren
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!ren !cmdc!
)>>%opened_file%
exit /b
:endfunction482738110260
goto endfunction492738110260
:download
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!powershell -Command "(New-Object Net.WebClient).DownloadFile('!cmdc!', 'download')"
)>>%opened_file%
exit /b
:endfunction492738110260
goto endfunction502738110260
:prompt
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(set /p !cmdc!=""
)>>%opened_file%
exit /b
:endfunction502738110260
goto endfunction512738110260
:define
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmdc:~0,4!"=="text" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$defineText
set traceback_linenum_%traceback_callNum%=802
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=define
call :defineText
set /a traceback_callNum=%traceback_callNum%-1
) else if /i "!cmdc:~0,6!"=="prompt" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$definePrompt
set traceback_linenum_%traceback_callNum%=804
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=define
call :definePrompt
set /a traceback_callNum=%traceback_callNum%-1
) else if /i "!cmdc:~0,4!"=="math" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$defineMath
set traceback_linenum_%traceback_callNum%=806
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=define
call :defineMath
set /a traceback_callNum=%traceback_callNum%-1
) else if /i "!cmdc:~0,8!"=="function" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$defineFunction
set traceback_linenum_%traceback_callNum%=808
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=define
call :defineFunction
set /a traceback_callNum=%traceback_callNum%-1
) else (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$plainDefine
set traceback_linenum_%traceback_callNum%=810
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=define
call :plainDefine
set /a traceback_callNum=%traceback_callNum%-1
)
exit /b
:endfunction512738110260
goto endfunction522738110260
:definePrompt
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~14,-1!
set opened_file=sys.bat
(
echo(set /p !cmdc!
)>>%opened_file%
exit /b
:endfunction522738110260
goto endfunction532738110260
:defineMath
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~12,-1!
set opened_file=sys.bat
(
echo(set /a !cmdc!
)>>%opened_file%
exit /b
:endfunction532738110260
goto endfunction542738110260
:defineText
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~12,-1!
set opened_file=sys.bat
(
echo(!pps!set !cmdc!
)>>%opened_file%
exit /b
:endfunction542738110260
goto endfunction552738110260
:plainDefine
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!set !cmdc!
)>>%opened_file%
exit /b
:endfunction552738110260
goto endfunction562738110260
:callFunction
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~1!
set opened_file=sys.bat
(
echo(!pps!set /a traceback_callNum=%%traceback_callNum%%+1
echo(!pps!set traceback_line_%%traceback_callNum%%=!cmd!
echo(!pps!set traceback_linenum_%%traceback_callNum%%=%line%
echo(!pps!set traceback_module_%%traceback_callNum%%=%moduleName%
echo(!pps!set traceback_moduleID_%%traceback_callNum%%=%moduleID%
echo(!pps!set traceback_function_%%traceback_callNum%%=%functionName%
echo(!pps!call :!cmdc!
echo(!pps!set /a traceback_callNum=%%traceback_callNum%%-1
)>>%opened_file%
exit /b
:endfunction562738110260
goto endfunction572738110260
:callf
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~2!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$functionToVar
set traceback_linenum_%traceback_callNum%=851
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=callf
call :functionToVar
set /a traceback_callNum=%traceback_callNum%-1
set opened_file=sys.bat
(
echo(!pps!set /a tbcn1=%%traceback_callNum%%+1
echo(!pps!set /a traceback_callNum=%%traceback_callNum%%+1
echo(!pps!set traceback_line_%%traceback_callNum%%=!cmd!
echo(!pps!set traceback_linenum_%%traceback_callNum%%=%line%
echo(!pps!set traceback_module_%%traceback_callNum%%=%moduleName%
echo(!pps!set traceback_moduleID_%%traceback_callNum%%=%moduleID%
echo(!pps!set traceback_function_%%traceback_callNum%%=%functionName%
echo(!pps!call call :!cmdc!
echo(!pps!set /a traceback_callNum=%%traceback_callNum%%-1
)>>%opened_file%
exit /b
:endfunction572738110260
goto endfunction582738110260
:goto
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!goto !cmdc!
)>>%opened_file%
exit /b
:endfunction582738110260
goto endfunction592738110260
:place
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!:!cmdc!
)>>%opened_file%
exit /b
:endfunction592738110260
goto endfunction602738110260
:title
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!title !cmdc!
)>>%opened_file%
exit /b
:endfunction602738110260
goto endfunction612738110260
:comment
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~1!
set opened_file=sys.bat
(
echo(::!cmdc!
)>>%opened_file%
exit /b
:endfunction612738110260
goto endfunction622738110260
:endFunction
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set functionName=[module]
set opened_file=sys.bat
(
echo(!pps!exit /b
echo(!pps!:endfunction%functionNumber%%moduleID%
)>>%opened_file%
exit /b
:endfunction622738110260
goto endfunction632738110260
:defineFunction
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set bracketString=%bracketString%F
set /a functionNumber=%functionNumber%+1
set cmdc=!cmd:~16,-3!
set functionName=!cmdc!
set opened_file=sys.bat
(
echo(!pps!goto endfunction%functionNumber%%moduleID%
echo(!pps!:!cmdc!
echo(!pps!set arg1=%%~1
echo(!pps!set arg2=%%~2
echo(!pps!set arg3=%%~3
echo(!pps!set arg4=%%~4
echo(!pps!set arg5=%%~5
)>>%opened_file%
exit /b
:endfunction632738110260
goto endfunction642738110260
:batcmd
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!cmdc!
)>>%opened_file%
exit /b
:endfunction642738110260
goto endfunction652738110260
:endIf
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!!pes!^)
)>>%opened_file%
exit /b
:endfunction652738110260
goto endfunction662738110260
:if
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~3,-3!
set cmdc=!cmdc:^>= GTR !
set cmdc=!cmdc:^<= LSS !
set bracketString=%bracketString%I
set cmdc=!cmdc:^&= if !
set opened_file=sys.bat
(
echo(!pps!if !cmdc! ^(
)>>%opened_file%
exit /b
:endfunction662738110260
goto endfunction672738110260
:disp
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(mode 1000
)>>%opened_file%
exit /b
:endfunction672738110260
goto endfunction682738110260
:sortColours
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:\n=^&echo(!
set cmdc=!cmdc:@reset=%%esc0m%%!
set cmdc=!cmdc:@r=%%esc0m%%!
set cmdc=!cmdc:@bold=%%esc1m%%!
set cmdc=!cmdc:@underline=%%esc4m%%!
set cmdc=!cmdc:@u=%%esc4m%%!
set cmdc=!cmdc:@inverse=%%esc7m%%!
set cmdc=!cmdc:@i=%%esc7m%%!
set cmdc=!cmdc:@0=%%esc40m%%#!
set cmdc=!cmdc:@1=%%esc44m%%#!
set cmdc=!cmdc:@2=%%esc42m%%#!
set cmdc=!cmdc:@3=%%esc46m%%#!
set cmdc=!cmdc:@4=%%esc41m%%#!
set cmdc=!cmdc:@5=%%esc45m%%#!
set cmdc=!cmdc:@6=%%esc43m%%#!
set cmdc=!cmdc:@7=%%esc47m%%#!
set cmdc=!cmdc:@8=%%esc100m%%#!
set cmdc=!cmdc:@9=%%esc104m%%#!
set cmdc=!cmdc:@a=%%esc102m%%#!
set cmdc=!cmdc:@b=%%esc106m%%#!
set cmdc=!cmdc:@c=%%esc101m%%#!
set cmdc=!cmdc:@d=%%esc105m%%#!
set cmdc=!cmdc:@e=%%esc103m%%#!
set cmdc=!cmdc:@f=%%esc107m%%#!
set cmdc=!cmdc:#0=%%esc30m%%!
set cmdc=!cmdc:#1=%%esc34m%%!
set cmdc=!cmdc:#2=%%esc32m%%!
set cmdc=!cmdc:#3=%%esc36m%%!
set cmdc=!cmdc:#4=%%esc31m%%!
set cmdc=!cmdc:#5=%%esc35m%%!
set cmdc=!cmdc:#6=%%esc33m%%!
set cmdc=!cmdc:#7=%%esc37m%%!
set cmdc=!cmdc:#8=%%esc90m%%!
set cmdc=!cmdc:#9=%%esc94m%%!
set cmdc=!cmdc:#a=%%esc92m%%!
set cmdc=!cmdc:#b=%%esc96m%%!
set cmdc=!cmdc:#c=%%esc91m%%!
set cmdc=!cmdc:#d=%%esc95m%%!
set cmdc=!cmdc:#e=%%esc93m%%!
set cmdc=!cmdc:#f=%%esc97m%%!
set cmdc=!cmdc!%%esc0m%%
exit /b
:endfunction682738110260
goto endfunction692738110260
:print
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if "!cmdc!"=="" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$emptyPrint
set traceback_linenum_%traceback_callNum%=977
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=print
call :emptyPrint
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
echo %bracketString% | findstr A >nul
if not errorlevel 1 (
goto rawPrint
)
echo %bracketString% | findstr R >nul
if not errorlevel 1 (
goto rawPrint
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$sortColours
set traceback_linenum_%traceback_callNum%=988
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=print
call :sortColours
set /a traceback_callNum=%traceback_callNum%-1
:rawPrint
set opened_file=sys.bat
(
echo(echo(!cmdc!
)>>%opened_file%
exit /b
:endfunction692738110260
goto endfunction702738110260
:printf
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$sortColours
set traceback_linenum_%traceback_callNum%=995
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=printf
call :sortColours
set /a traceback_callNum=%traceback_callNum%-1
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$functionToVar
set traceback_linenum_%traceback_callNum%=996
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=printf
call :functionToVar
set /a traceback_callNum=%traceback_callNum%-1
set opened_file=sys.bat
(
echo(set /a tbcn1=%%traceback_callNum%%+1
echo(call echo !cmdc!
)>>%opened_file%
exit /b
:endfunction702738110260
goto endfunction712738110260
:emptyPrint
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(echo.
)>>%opened_file%
exit /b
:endfunction712738110260
goto endfunction722738110260
:end
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!exit
)>>%opened_file%
exit /b
:endfunction722738110260
goto endfunction732738110260
:wait
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmdc!"=="user" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$waitUser
set traceback_linenum_%traceback_callNum%=1014
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=wait
call :waitUser
set /a traceback_callNum=%traceback_callNum%-1
) else (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$waitTime
set traceback_linenum_%traceback_callNum%=1016
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=wait
call :waitTime
set /a traceback_callNum=%traceback_callNum%-1
)
exit /b
:endfunction732738110260
goto endfunction742738110260
:waitUser
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(pause^>nul
)>>%opened_file%
exit /b
:endfunction742738110260
goto endfunction752738110260
:waitTime
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(!pps!timeout /t !cmdc! /nobreak !pes!^>nul
)>>%opened_file%
exit /b
:endfunction752738110260
goto endfunction762738110260
:clear
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(cls
)>>%opened_file%
exit /b
:endfunction762738110260
goto endfunction772738110260
:raise
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(echo. 
echo(color 0c
echo(echo Exception: !cmdc!
echo(echo.
echo(echo Traceback [most recent call last]:
echo(echo.
echo(set tracing_back=0
echo(call :tracing_back_%moduleID%
echo(echo %moduleName% [module ID %moduleID%], line %line%, in %functionName%:
echo(echo !cmd!
echo(echo.
echo(pause
echo(exit
)>>%opened_file%
exit /b
:endfunction772738110260
goto endfunction782738110260
:import
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if "!cmdc:~0,4!"=="net:" (
set cmdc=!cmdc:~4!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_net
set traceback_linenum_%traceback_callNum%=1054
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=import
call :import_net
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if "!cmdc:~0,6!"=="local:" (
set cmdc=!cmdc:~6!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_local
set traceback_linenum_%traceback_callNum%=1059
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=import
call :import_local
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if "!cmdc:~0,8!"=="inbuilt:" (
set cmdc=!cmdc:~8!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_inbuilt
set traceback_linenum_%traceback_callNum%=1064
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=import
call :import_inbuilt
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if exist "!cmdc!.bat" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_local
set traceback_linenum_%traceback_callNum%=1068
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=import
call :import_local
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
if exist "%~dp0modules\!cmdc!.bat" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_inbuilt
set traceback_linenum_%traceback_callNum%=1072
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=import
call :import_inbuilt
set /a traceback_callNum=%traceback_callNum%-1
set toReturn_%returnID%_%traceback_callNum%=
exit /b
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_net
set traceback_linenum_%traceback_callNum%=1075
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=2738110260
set traceback_function_%traceback_callNum%=import
call :import_net
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction782738110260
goto endfunction792738110260
:import_net
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
del download
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/AddisonPascal/c2b/master/modules/!cmdc!.bat', 'download')"
if not exist download (
echo. 
color 0c
echo Exception: Error: Cannot find online module.
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_2738110260
echo C2B Compiler [module ID 2738110260], line 1081, in import_net:
echo raise Error: Cannot find online module.
echo.
pause
exit
)
set opened_file=sys.bat
(
type download
echo.
)>>%opened_file%
copy download "%~dp0modules\!cmdc!.bat" >nul
del download
exit /b
:endfunction792738110260
goto endfunction802738110260
:import_local
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if not exist "!cmdc!.bat" (
echo. 
color 0c
echo Exception: Error: Cannot find local module.
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_2738110260
echo C2B Compiler [module ID 2738110260], line 1092, in import_local:
echo raise Error: Cannot find local module.
echo.
pause
exit
)
set opened_file=sys.bat
(
type "!cmdc!.bat"
echo.
)>>%opened_file%
exit /b
:endfunction802738110260
goto endfunction812738110260
:import_inbuilt
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if not exist "%~dp0modules\!cmdc!.bat" (
echo. 
color 0c
echo Exception: Error: Cannot find inbuilt module
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_2738110260
echo C2B Compiler [module ID 2738110260], line 1101, in import_inbuilt:
echo raise Error: Cannot find inbuilt module
echo.
pause
exit
)
set opened_file=sys.bat
(
type "%~dp0modules\!cmdc!.bat"
echo.
)>>%opened_file%
exit /b
:endfunction812738110260
goto endfunction822738110260
:export
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set new_location=%location:~0,-4%.bat"
copy sys.bat %new_location%
del sys.bat
title  
endlocal
set traceback_callNum=0
cls
call %new_location%
exit
exit /b
:endfunction822738110260

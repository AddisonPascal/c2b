@echo off
rem Compiled by the c2b Compiler from c2b v0.8.6. 
rem Module ID: 82211478
if "%alreadyStarted%"=="" set traceback_callNum=0
set alreadyStarted=true
set esc=
ver | findstr /c:"Version 10"
if errorlevel 1 goto noWin1082211478
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
goto startOfFile82211478
:noWin1082211478
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
goto startOfFile82211478
:alertJS82211478
mshta javascript:alert("%~1");close();
exit/b
:ifIn82211478
echo %~2 | findstr /c:%~1
exit /b 0
:tracing_back_82211478
if %tracing_back%==%traceback_callNum% goto end_tracing_back_82211478
set /a tracing_back=%tracing_back%+1
call echo %%traceback_module_%tracing_back%%% [module ID %%traceback_moduleID_%tracing_back%%%], line %%traceback_linenum_%tracing_back%%%, in %%traceback_function_%tracing_back%%%:
call echo %%traceback_line_%tracing_back%%%
goto tracing_back_82211478
:end_tracing_back_82211478
exit /b
:startOfFile82211478
:: c2b Compiler by Addison Djatschenko
:: Version 0.8.7
set version=0.8.7
setlocal enabledelayedexpansion
title C2B Compiler v%version%
set whileCount=0
set whileWrite=00
set bracketString=
set functionNumber=0
set moduleID=%random%%random%
set functionName=[module]
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
:call tracing_back_82211478
echo C2B Compiler [module ID 82211478], line 98, in [module]:
echo raise Error: Use c2b compiler by opening a c2b file with it.
echo.
pause
exit
)
goto endfunction182211478
:getFilename
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set fileName=%~nx1
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction182211478
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$getFilename %1
set traceback_linenum_%traceback_callNum%=103
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=[module]
call :getFilename %1
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
:while0182211478
if 1 EQU 1 (
goto whiling0182211478
) else (
goto afterwhile0182211478
)
:whiling0182211478
set /a line=%line%+1
set cmd=~linebreak
set /p cmd="%line% | "
if "!cmd!"=="~linebreak" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$linebreak
set traceback_linenum_%traceback_callNum%=119
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=[module]
call :linebreak
goto anotherLine
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$convertCommand
set traceback_linenum_%traceback_callNum%=122
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=[module]
call :convertCommand
:anotherLine
goto while0182211478
:afterwhile0182211478
goto endfunction282211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction282211478
goto endfunction382211478
:abs
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmd!"=="%arg1%" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$%arg2%
set traceback_linenum_%traceback_callNum%=132
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=abs
call :%arg2%
)
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction382211478
goto endfunction482211478
:convertCommand
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:while0282211478
if "!cmd:~0,1!"==" " (
goto whiling0282211478
) else (
goto afterwhile0282211478
)
:whiling0282211478
set cmd=!cmd:~1!
goto while0282211478
:afterwhile0282211478
if "!cmd:~0,1!"=="#" (
set cmdc=!cmd:~1,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$comment
set traceback_linenum_%traceback_callNum%=141
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :comment
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="print" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$print
set traceback_linenum_%traceback_callNum%=146
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :print
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="wait" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$wait
set traceback_linenum_%traceback_callNum%=151
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :wait
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,3!"=="end" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$end
set traceback_linenum_%traceback_callNum%=156
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :end
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="export" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$export
set traceback_linenum_%traceback_callNum%=161
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :export
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="disp" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$disp
set traceback_linenum_%traceback_callNum%=166
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :disp
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="clear" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$clear
set traceback_linenum_%traceback_callNum%=171
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :clear
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="ifin" (
set cmdc=!cmd:~5,-3!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$ifin
set traceback_linenum_%traceback_callNum%=176
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :ifin
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,2!"=="if" (
set cmdc=!cmd:~3,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$if
set traceback_linenum_%traceback_callNum%=181
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :if
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="} elif" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$elif
set traceback_linenum_%traceback_callNum%=186
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :elif
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,3!"=="cmd" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$batcmd
set traceback_linenum_%traceback_callNum%=191
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :batcmd
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="title" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$title
set traceback_linenum_%traceback_callNum%=196
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :title
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="define" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$define
set traceback_linenum_%traceback_callNum%=201
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :define
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="place" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$place
set traceback_linenum_%traceback_callNum%=206
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :place
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="goto" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$goto
set traceback_linenum_%traceback_callNum%=211
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :goto
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if "!cmd:~0,1!"=="$" (
set cmdc=!cmd:~2,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$callFunction
set traceback_linenum_%traceback_callNum%=216
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :callFunction
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="prompt" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$prompt
set traceback_linenum_%traceback_callNum%=221
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :prompt
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,8!"=="download" (
set cmdc=!cmd:~9,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$download
set traceback_linenum_%traceback_callNum%=226
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :download
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,3!"=="ren" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$ren
set traceback_linenum_%traceback_callNum%=231
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :ren
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,3!"=="del" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$del
set traceback_linenum_%traceback_callNum%=236
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :del
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="mkfile" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$mkfile
set traceback_linenum_%traceback_callNum%=241
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :mkfile
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,8!"=="mkfolder" (
set cmdc=!cmd:~9,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$mkfolder
set traceback_linenum_%traceback_callNum%=246
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :mkfolder
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="file" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$file
set traceback_linenum_%traceback_callNum%=251
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :file
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="play" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$play
set traceback_linenum_%traceback_callNum%=256
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :play
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="while" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$while
set traceback_linenum_%traceback_callNum%=261
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :while
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="incr" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$incr
set traceback_linenum_%traceback_callNum%=266
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :incr
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="repeat" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$repeat
set traceback_linenum_%traceback_callNum%=271
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :repeat
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="break" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$break
set traceback_linenum_%traceback_callNum%=276
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :break
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="return" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$return
set traceback_linenum_%traceback_callNum%=281
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :return
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="open" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$open
set traceback_linenum_%traceback_callNum%=286
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :open
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="skey" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$skey
set traceback_linenum_%traceback_callNum%=291
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :skey
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,2!"=="ps" (
set cmdc=!cmd:~3,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$ps
set traceback_linenum_%traceback_callNum%=296
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :ps
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="alert" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$alert
set traceback_linenum_%traceback_callNum%=301
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :alert
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="color" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$colour
set traceback_linenum_%traceback_callNum%=306
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :colour
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="colour" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$colour
set traceback_linenum_%traceback_callNum%=311
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :colour
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,7!"=="restart" (
set cmdc=!cmd:~8,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$restart
set traceback_linenum_%traceback_callNum%=316
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :restart
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,3!"=="out" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$out
set traceback_linenum_%traceback_callNum%=321
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :out
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,7!"=="rewrite" (
set cmdc=!cmd:~8,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$rewrite
set traceback_linenum_%traceback_callNum%=326
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :rewrite
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="choice" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$choice
set traceback_linenum_%traceback_callNum%=331
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :choice
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="stop" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$stop
set traceback_linenum_%traceback_callNum%=336
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :stop
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="close" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$stop
set traceback_linenum_%traceback_callNum%=341
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :stop
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="import" (
set cmdc=!cmd:~7!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import
set traceback_linenum_%traceback_callNum%=346
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :import
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="raise" (
set cmdc=!cmd:~6!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$raise
set traceback_linenum_%traceback_callNum%=351
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :raise
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if "!cmd:~0,1!"=="[" (
set cmdc=!cmd:~2,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$setQuick
set traceback_linenum_%traceback_callNum%=356
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :setQuick
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$abs } closeBracket
set traceback_linenum_%traceback_callNum%=359
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :abs } closeBracket
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$abs "} else {" else
set traceback_linenum_%traceback_callNum%=360
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=convertCommand
call :abs "} else {" else
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction482211478
goto endfunction582211478
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
echo(call :ifIn%moduleID% !cmdc!
echo(if %errorlevel% NEQ 1 (
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction582211478
goto endfunction682211478
:stop
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(taskkill /im !cmdc! /f
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction682211478
goto endfunction782211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction782211478
goto endfunction882211478
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
set traceback_linenum_%traceback_callNum%=392
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=rewrite
call :sortColours
:rawRewrite
set opened_file=sys.bat
(
echo(echo %%escRewrite%%!cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction882211478
goto endfunction982211478
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
set traceback_linenum_%traceback_callNum%=407
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=out
call :sortColours
:rawOut
set opened_file=sys.bat
(
echo(echo ^| set /p ^^="!cmdc!"
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction982211478
goto endfunction1082211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction1082211478
goto endfunction1182211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction1182211478
goto endfunction1282211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction1282211478
goto endfunction1382211478
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
echo(^) else if !cmdc! (
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction1382211478
goto endfunction1482211478
:ps
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmdc:"='!
set opened_file=sys.bat
(
echo(powershell -Command "!cmdc!"
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction1482211478
goto endfunction1582211478
:else
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(^) else (
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction1582211478
goto endfunction1682211478
:skey
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(set skey_id=%%random%%
echo((
echo(echo Set WshShell = WScript.CreateObject("WScript.Shell"^^^)
echo(echo WshShell.SendKeys "!cmdc!"
echo(^)^>"%%temp%%\%%skey_id%%.vbs"
echo(start "" "%%temp%%\%%skey_id%%.vbs"
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction1682211478
goto endfunction1782211478
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
set traceback_linenum_%traceback_callNum%=463
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=file
call :write
) else if /i "!cmd:~0,6!"=="append" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$append
set traceback_linenum_%traceback_callNum%=466
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=file
call :append
)
set cmdc=!cmdc:~0,-1!
set opened_file=sys.bat
(
echo(set opened_file=!cmdc!
echo((
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction1782211478
goto endfunction1882211478
:append
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set bracketString=%bracketString%A
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction1882211478
goto endfunction1982211478
:write
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set bracketString=%bracketString%R
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction1982211478
goto endfunction2082211478
:open
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(start "" !cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction2082211478
goto endfunction2182211478
:setQuick
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~1,1!!cmdc!
set opened_file=sys.bat
(
echo(set !cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction2182211478
goto endfunction2282211478
:return
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(set /a traceback_callNum=%%traceback_callNum%%-1
echo(exit /b
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction2282211478
goto endfunction2382211478
:break
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set whileWriting=%whileWrite:~-2,2%
set opened_file=sys.bat
(
echo(goto afterwhile%whileWriting%%moduleID%
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction2382211478
goto endfunction2482211478
:closeBracket
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if "%bracketString:~-1,1%"=="I" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endIf
set traceback_linenum_%traceback_callNum%=505
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=closeBracket
call :endIf
) else if "%bracketString:~-1,1%"=="W" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endWhile
set traceback_linenum_%traceback_callNum%=507
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=closeBracket
call :endWhile
) else if "%bracketString:~-1,1%"=="F" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endFunction
set traceback_linenum_%traceback_callNum%=509
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=closeBracket
call :endFunction
) else if "%bracketString:~-1,1%"=="R" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endWrite
set traceback_linenum_%traceback_callNum%=511
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=closeBracket
call :endWrite
) else if "%bracketString:~-1,1%"=="A" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endAppend
set traceback_linenum_%traceback_callNum%=513
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=closeBracket
call :endAppend
)
set bracketString=%bracketString:~0,-1%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction2482211478
goto endfunction2582211478
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
echo(set repeatCounting%whileWriting%=-1
echo(call :while%whileWriting%%moduleID%
echo(goto afterwhile%whileWriting%%moduleID%
echo(:while%whileWriting%%moduleID%
echo(set /a repeatCounting%whileWriting%=%%repeatCounting%whileWriting%%%+1
echo(if %%repeatCounting%whileWriting%%% LSS !cmdc! call :whiling%whileWriting%%moduleID%
echo(goto afterwhile%whileWriting%%moduleID%
echo(exit /b
echo(:whiling%whileWriting%%moduleID%
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction2582211478
goto endfunction2682211478
:incr
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(set /a !cmdc!=%%!cmdc!%%+1
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction2682211478
goto endfunction2782211478
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
echo(:while%whileWriting%%moduleID%
echo(if !cmdc! (
echo(goto whiling%whileWriting%%moduleID%
echo(^) else (
echo(goto afterwhile%whileWriting%%moduleID%
echo(^)
echo(:whiling%whileWriting%%moduleID%
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction2782211478
goto endfunction2882211478
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
echo(goto while%whileWriting%%moduleID%
echo(:afterwhile%whileWriting%%moduleID%
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction2882211478
goto endfunction2982211478
:play
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(powershell [console]::Beep(!cmdc!^)
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction2982211478
goto endfunction3082211478
:endWrite
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(^)^>%%opened_file%%
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction3082211478
goto endfunction3182211478
:endAppend
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(^)^>^>%%opened_file%%
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction3182211478
goto endfunction3282211478
:mkfolder
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(md !cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction3282211478
goto endfunction3382211478
:mkfile
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(echo.^>!cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction3382211478
goto endfunction3482211478
:del
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(del !cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction3482211478
goto endfunction3582211478
:ren
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(ren !cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction3582211478
goto endfunction3682211478
:download
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(powershell -Command "(New-Object Net.WebClient).DownloadFile('!cmdc!', 'download')"
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction3682211478
goto endfunction3782211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction3782211478
goto endfunction3882211478
:define
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmdc:~0,4!"=="text" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$defineText
set traceback_linenum_%traceback_callNum%=622
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=define
call :defineText
) else if /i "!cmdc:~0,6!"=="prompt" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$definePrompt
set traceback_linenum_%traceback_callNum%=624
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=define
call :definePrompt
) else if /i "!cmdc:~0,4!"=="math" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$defineMath
set traceback_linenum_%traceback_callNum%=626
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=define
call :defineMath
) else if /i "!cmdc:~0,8!"=="function" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$defineFunction
set traceback_linenum_%traceback_callNum%=628
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=define
call :defineFunction
) else (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$plainDefine
set traceback_linenum_%traceback_callNum%=630
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=define
call :plainDefine
)
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction3882211478
goto endfunction3982211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction3982211478
goto endfunction4082211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction4082211478
goto endfunction4182211478
:defineText
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~12,-1!
set opened_file=sys.bat
(
echo(set !cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction4182211478
goto endfunction4282211478
:plainDefine
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(set !cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction4282211478
goto endfunction4382211478
:callFunction
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~1!
set opened_file=sys.bat
(
echo(set /a traceback_callNum=%%traceback_callNum%%+1
echo(set traceback_line_%%traceback_callNum%%=!cmd!
echo(set traceback_linenum_%%traceback_callNum%%=%line%
echo(set traceback_module_%%traceback_callNum%%=%moduleName%
echo(set traceback_moduleID_%%traceback_callNum%%=%moduleID%
echo(set traceback_function_%%traceback_callNum%%=%functionName%
echo(call :!cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction4382211478
goto endfunction4482211478
:goto
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(goto !cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction4482211478
goto endfunction4582211478
:place
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(:!cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction4582211478
goto endfunction4682211478
:title
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(title !cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction4682211478
goto endfunction4782211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction4782211478
goto endfunction4882211478
:endFunction
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set functionName=[module]
set opened_file=sys.bat
(
echo(set /a traceback_callNum=%%traceback_callNum%%-1
echo(exit /b
echo(:endfunction%functionNumber%%moduleID%
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction4882211478
goto endfunction4982211478
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
echo(goto endfunction%functionNumber%%moduleID%
echo(:!cmdc!
echo(set arg1=%%~1
echo(set arg2=%%~2
echo(set arg3=%%~3
echo(set arg4=%%~4
echo(set arg5=%%~5
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction4982211478
goto endfunction5082211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction5082211478
goto endfunction5182211478
:endIf
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(^)
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction5182211478
goto endfunction5282211478
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
echo(if !cmdc! ^(
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction5282211478
goto endfunction5382211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction5382211478
goto endfunction5482211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction5482211478
goto endfunction5582211478
:print
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if "!cmdc!"=="" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$emptyPrint
set traceback_linenum_%traceback_callNum%=782
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=print
call :emptyPrint
set /a traceback_callNum=%traceback_callNum%-1
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
set traceback_linenum_%traceback_callNum%=793
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=print
call :sortColours
:rawPrint
set opened_file=sys.bat
(
echo(echo(!cmdc!
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction5582211478
goto endfunction5682211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction5682211478
goto endfunction5782211478
:end
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(exit
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction5782211478
goto endfunction5882211478
:wait
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmdc!"=="user" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$waitUser
set traceback_linenum_%traceback_callNum%=811
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=wait
call :waitUser
) else (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$waitTime
set traceback_linenum_%traceback_callNum%=813
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=wait
call :waitTime
)
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction5882211478
goto endfunction5982211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction5982211478
goto endfunction6082211478
:waitTime
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(timeout /t !cmdc! /nobreak ^>nul
)>>%opened_file%
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction6082211478
goto endfunction6182211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction6182211478
goto endfunction6282211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction6282211478
goto endfunction6382211478
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
set traceback_linenum_%traceback_callNum%=851
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=import
call :import_net
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if "!cmdc:~0,6!"=="local:" (
set cmdc=!cmdc:~6!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_local
set traceback_linenum_%traceback_callNum%=856
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=import
call :import_local
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if "!cmdc:~0,8!"=="inbuilt:" (
set cmdc=!cmdc:~8!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_inbuilt
set traceback_linenum_%traceback_callNum%=861
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=import
call :import_inbuilt
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if exist "!cmdc!.bat" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_local
set traceback_linenum_%traceback_callNum%=865
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=import
call :import_local
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if exist "%~dp0modules\!cmdc!.bat" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_inbuilt
set traceback_linenum_%traceback_callNum%=869
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=import
call :import_inbuilt
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_net
set traceback_linenum_%traceback_callNum%=872
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=82211478
set traceback_function_%traceback_callNum%=import
call :import_net
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction6382211478
goto endfunction6482211478
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
:call tracing_back_82211478
echo C2B Compiler [module ID 82211478], line 878, in import_net:
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
del download
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction6482211478
goto endfunction6582211478
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
:call tracing_back_82211478
echo C2B Compiler [module ID 82211478], line 888, in import_local:
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction6582211478
goto endfunction6682211478
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
:call tracing_back_82211478
echo C2B Compiler [module ID 82211478], line 897, in import_inbuilt:
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction6682211478
goto endfunction6782211478
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
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction6782211478

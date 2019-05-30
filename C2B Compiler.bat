@echo off
rem Compiled by the c2b Compiler from c2b v0.8.8. 
rem Module ID: 289769679
if "%alreadyStarted%"=="" set traceback_callNum=0
set alreadyStarted=true
set esc=
ver | findstr /c:"Version 10"
if errorlevel 1 goto noWin10289769679
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
goto startOfFile289769679
:noWin10289769679
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
goto startOfFile289769679
:alertJS289769679
mshta javascript:alert("%~1");close();
exit/b
:ifIn289769679
echo %~2 | findstr /c:%~1
exit /b 0
:tracing_back_289769679
if %tracing_back%==%traceback_callNum% goto end_tracing_back_289769679
set /a tracing_back=%tracing_back%+1
call echo %%traceback_module_%tracing_back%%% [module ID %%traceback_moduleID_%tracing_back%%%], line %%traceback_linenum_%tracing_back%%%, in %%traceback_function_%tracing_back%%%:
call echo %%traceback_line_%tracing_back%%%
goto tracing_back_289769679
:end_tracing_back_289769679
exit /b
:startOfFile289769679
:: c2b Compiler by Addison Djatschenko
:: Version 0.8.9
set version=0.8.9
setlocal enabledelayedexpansion
title C2B Compiler v%version%
set whileCount=0
set whileWrite=00
set bracketString=
set functionNumber=0
set moduleID=%random%%random%
set functionName=[module]
set returnID=0
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
call :tracing_back_289769679
echo C2B Compiler [module ID 289769679], line 99, in [module]:
echo raise Error: Use c2b compiler by opening a c2b file with it.
echo.
pause
exit
)
goto endfunction1289769679
:getFilename
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set fileName=%~nx1
exit /b
:endfunction1289769679
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$getFilename %1
set traceback_linenum_%traceback_callNum%=104
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
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
:while01289769679
if 1 EQU 1 (
goto whiling01289769679
) else (
goto afterwhile01289769679
)
:whiling01289769679
set /a line=%line%+1
set cmd=~linebreak
set /p cmd="%line% | "
if "!cmd!"=="~linebreak" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$linebreak
set traceback_linenum_%traceback_callNum%=120
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=[module]
call :linebreak
set /a traceback_callNum=%traceback_callNum%-1
goto anotherLine
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$convertCommand
set traceback_linenum_%traceback_callNum%=123
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=[module]
call :convertCommand
set /a traceback_callNum=%traceback_callNum%-1
:anotherLine
goto while01289769679
:afterwhile01289769679
goto endfunction2289769679
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
:endfunction2289769679
goto endfunction3289769679
:abs
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmd!"=="%arg1%" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$%arg2%
set traceback_linenum_%traceback_callNum%=133
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=abs
call :%arg2%
set /a traceback_callNum=%traceback_callNum%-1
)
exit /b
:endfunction3289769679
goto endfunction4289769679
:convertCommand
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:while02289769679
if "!cmd:~0,1!"==" " (
goto whiling02289769679
) else (
goto afterwhile02289769679
)
:whiling02289769679
set cmd=!cmd:~1!
goto while02289769679
:afterwhile02289769679
if "!cmd:~0,1!"=="#" (
set cmdc=!cmd:~1,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$comment
set traceback_linenum_%traceback_callNum%=142
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :comment
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="print" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$print
set traceback_linenum_%traceback_callNum%=147
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :print
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="wait" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$wait
set traceback_linenum_%traceback_callNum%=152
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :wait
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,3!"=="end" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$end
set traceback_linenum_%traceback_callNum%=157
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :end
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="export" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$export
set traceback_linenum_%traceback_callNum%=162
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :export
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="disp" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$disp
set traceback_linenum_%traceback_callNum%=167
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :disp
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="clear" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$clear
set traceback_linenum_%traceback_callNum%=172
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :clear
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="ifin" (
set cmdc=!cmd:~5,-3!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$ifin
set traceback_linenum_%traceback_callNum%=177
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :ifin
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,2!"=="if" (
set cmdc=!cmd:~3,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$if
set traceback_linenum_%traceback_callNum%=182
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :if
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="} elif" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$elif
set traceback_linenum_%traceback_callNum%=187
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :elif
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,3!"=="cmd" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$batcmd
set traceback_linenum_%traceback_callNum%=192
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :batcmd
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="title" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$title
set traceback_linenum_%traceback_callNum%=197
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :title
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="define" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$define
set traceback_linenum_%traceback_callNum%=202
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :define
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="place" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$place
set traceback_linenum_%traceback_callNum%=207
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :place
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="goto" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$goto
set traceback_linenum_%traceback_callNum%=212
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :goto
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if "!cmd:~0,1!"=="$" (
set cmdc=!cmd:~2,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$callFunction
set traceback_linenum_%traceback_callNum%=217
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :callFunction
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="prompt" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$prompt
set traceback_linenum_%traceback_callNum%=222
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :prompt
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,8!"=="download" (
set cmdc=!cmd:~9,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$download
set traceback_linenum_%traceback_callNum%=227
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :download
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,3!"=="ren" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$ren
set traceback_linenum_%traceback_callNum%=232
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :ren
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,3!"=="del" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$del
set traceback_linenum_%traceback_callNum%=237
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :del
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="mkfile" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$mkfile
set traceback_linenum_%traceback_callNum%=242
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :mkfile
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,8!"=="mkfolder" (
set cmdc=!cmd:~9,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$mkfolder
set traceback_linenum_%traceback_callNum%=247
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :mkfolder
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="file" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$file
set traceback_linenum_%traceback_callNum%=252
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :file
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="play" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$play
set traceback_linenum_%traceback_callNum%=257
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :play
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="while" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$while
set traceback_linenum_%traceback_callNum%=262
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :while
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="incr" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$incr
set traceback_linenum_%traceback_callNum%=267
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :incr
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="repeat" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$repeat
set traceback_linenum_%traceback_callNum%=272
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :repeat
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="break" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$break
set traceback_linenum_%traceback_callNum%=277
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :break
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="return" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$return
set traceback_linenum_%traceback_callNum%=282
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :return
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="open" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$open
set traceback_linenum_%traceback_callNum%=287
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :open
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="skey" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$skey
set traceback_linenum_%traceback_callNum%=292
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :skey
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,2!"=="ps" (
set cmdc=!cmd:~3,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$ps
set traceback_linenum_%traceback_callNum%=297
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :ps
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="alert" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$alert
set traceback_linenum_%traceback_callNum%=302
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :alert
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="color" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$colour
set traceback_linenum_%traceback_callNum%=307
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :colour
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="colour" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$colour
set traceback_linenum_%traceback_callNum%=312
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :colour
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,7!"=="restart" (
set cmdc=!cmd:~8,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$restart
set traceback_linenum_%traceback_callNum%=317
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :restart
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,3!"=="out" (
set cmdc=!cmd:~4,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$out
set traceback_linenum_%traceback_callNum%=322
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :out
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,7!"=="rewrite" (
set cmdc=!cmd:~8,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$rewrite
set traceback_linenum_%traceback_callNum%=327
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :rewrite
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="choice" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$choice
set traceback_linenum_%traceback_callNum%=332
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :choice
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,4!"=="stop" (
set cmdc=!cmd:~5,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$stop
set traceback_linenum_%traceback_callNum%=337
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :stop
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="close" (
set cmdc=!cmd:~6,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$stop
set traceback_linenum_%traceback_callNum%=342
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :stop
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,6!"=="import" (
set cmdc=!cmd:~7!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import
set traceback_linenum_%traceback_callNum%=347
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :import
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if /i "!cmd:~0,5!"=="raise" (
set cmdc=!cmd:~6!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$raise
set traceback_linenum_%traceback_callNum%=352
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :raise
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if "!cmd:~0,1!"=="[" (
set cmdc=!cmd:~2,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$setQuick
set traceback_linenum_%traceback_callNum%=357
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :setQuick
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$abs } closeBracket
set traceback_linenum_%traceback_callNum%=360
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :abs } closeBracket
set /a traceback_callNum=%traceback_callNum%-1
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$abs "} else {" else
set traceback_linenum_%traceback_callNum%=361
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=convertCommand
call :abs "} else {" else
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction4289769679
goto endfunction5289769679
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
exit /b
:endfunction5289769679
goto endfunction6289769679
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
exit /b
:endfunction6289769679
goto endfunction7289769679
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
:endfunction7289769679
goto endfunction8289769679
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
set traceback_linenum_%traceback_callNum%=393
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=rewrite
call :sortColours
set /a traceback_callNum=%traceback_callNum%-1
:rawRewrite
set opened_file=sys.bat
(
echo(echo %%escRewrite%%!cmdc!
)>>%opened_file%
exit /b
:endfunction8289769679
goto endfunction9289769679
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
set traceback_linenum_%traceback_callNum%=408
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=out
call :sortColours
set /a traceback_callNum=%traceback_callNum%-1
:rawOut
set opened_file=sys.bat
(
echo(echo ^| set /p ^^="!cmdc!"
)>>%opened_file%
exit /b
:endfunction9289769679
goto endfunction10289769679
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
:endfunction10289769679
goto endfunction11289769679
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
:endfunction11289769679
goto endfunction12289769679
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
:endfunction12289769679
goto endfunction13289769679
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
exit /b
:endfunction13289769679
goto endfunction14289769679
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
exit /b
:endfunction14289769679
goto endfunction15289769679
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
exit /b
:endfunction15289769679
goto endfunction16289769679
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
exit /b
:endfunction16289769679
goto endfunction17289769679
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
set traceback_linenum_%traceback_callNum%=464
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=file
call :write
set /a traceback_callNum=%traceback_callNum%-1
) else if /i "!cmd:~0,6!"=="append" (
set cmdc=!cmd:~7,-1!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$append
set traceback_linenum_%traceback_callNum%=467
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=file
call :append
set /a traceback_callNum=%traceback_callNum%-1
)
set cmdc=!cmdc:~0,-1!
set opened_file=sys.bat
(
echo(set opened_file=!cmdc!
echo((
)>>%opened_file%
exit /b
:endfunction17289769679
goto endfunction18289769679
:append
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set bracketString=%bracketString%A
exit /b
:endfunction18289769679
goto endfunction19289769679
:write
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set bracketString=%bracketString%R
exit /b
:endfunction19289769679
goto endfunction20289769679
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
exit /b
:endfunction20289769679
goto endfunction21289769679
:setQuick
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmdc=!cmd:~1,1!!cmdc!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$functionToVar
set traceback_linenum_%traceback_callNum%=488
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=setQuick
call :functionToVar
set /a traceback_callNum=%traceback_callNum%-1
set opened_file=sys.bat
(
echo(set /a tbcn1=%%traceback_callNum%%+1
echo(call set !cmdc!
)>>%opened_file%
exit /b
:endfunction21289769679
goto endfunction22289769679
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
echo(set returnID=%returnID%
echo(set /a traceback_callNum=%%traceback_callNum%%+1
echo(set traceback_line_%%traceback_callNum%%=!cmd!
echo(set traceback_linenum_%%traceback_callNum%%=%line%
echo(set traceback_module_%%traceback_callNum%%=%moduleName%
echo(set traceback_moduleID_%%traceback_callNum%%=%moduleID%
echo(set traceback_function_%%traceback_callNum%%=%functionName%
echo(call :!func!
echo(set /a traceback_callNum=%%traceback_callNum%%-1
)>>%opened_file%
set cmdc=!cmdc:$%func%$=%%%%toReturn_%returnID%_%%tbcn1%%%%%%!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$functionToVar
set traceback_linenum_%traceback_callNum%=531
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=functionToVar
call :functionToVar
set /a traceback_callNum=%traceback_callNum%-1
exit /b
exit /b
:endfunction22289769679
goto endfunction23289769679
:return
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set opened_file=sys.bat
(
echo(set toReturn_%%returnID%%_%%traceback_callNum%%=!cmd:~7!
echo(exit /b
)>>%opened_file%
exit /b
:endfunction23289769679
goto endfunction24289769679
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
exit /b
:endfunction24289769679
goto endfunction25289769679
:closeBracket
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if "%bracketString:~-1,1%"=="I" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endIf
set traceback_linenum_%traceback_callNum%=548
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=closeBracket
call :endIf
set /a traceback_callNum=%traceback_callNum%-1
) else if "%bracketString:~-1,1%"=="W" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endWhile
set traceback_linenum_%traceback_callNum%=550
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=closeBracket
call :endWhile
set /a traceback_callNum=%traceback_callNum%-1
) else if "%bracketString:~-1,1%"=="F" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endFunction
set traceback_linenum_%traceback_callNum%=552
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=closeBracket
call :endFunction
set /a traceback_callNum=%traceback_callNum%-1
) else if "%bracketString:~-1,1%"=="R" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endWrite
set traceback_linenum_%traceback_callNum%=554
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=closeBracket
call :endWrite
set /a traceback_callNum=%traceback_callNum%-1
) else if "%bracketString:~-1,1%"=="A" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$endAppend
set traceback_linenum_%traceback_callNum%=556
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=closeBracket
call :endAppend
set /a traceback_callNum=%traceback_callNum%-1
)
set bracketString=%bracketString:~0,-1%
exit /b
:endfunction25289769679
goto endfunction26289769679
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
exit /b
:endfunction26289769679
goto endfunction27289769679
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
exit /b
:endfunction27289769679
goto endfunction28289769679
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
exit /b
:endfunction28289769679
goto endfunction29289769679
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
exit /b
:endfunction29289769679
goto endfunction30289769679
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
exit /b
:endfunction30289769679
goto endfunction31289769679
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
exit /b
:endfunction31289769679
goto endfunction32289769679
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
exit /b
:endfunction32289769679
goto endfunction33289769679
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
exit /b
:endfunction33289769679
goto endfunction34289769679
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
exit /b
:endfunction34289769679
goto endfunction35289769679
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
exit /b
:endfunction35289769679
goto endfunction36289769679
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
exit /b
:endfunction36289769679
goto endfunction37289769679
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
exit /b
:endfunction37289769679
goto endfunction38289769679
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
:endfunction38289769679
goto endfunction39289769679
:define
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmdc:~0,4!"=="text" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$defineText
set traceback_linenum_%traceback_callNum%=665
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=define
call :defineText
set /a traceback_callNum=%traceback_callNum%-1
) else if /i "!cmdc:~0,6!"=="prompt" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$definePrompt
set traceback_linenum_%traceback_callNum%=667
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=define
call :definePrompt
set /a traceback_callNum=%traceback_callNum%-1
) else if /i "!cmdc:~0,4!"=="math" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$defineMath
set traceback_linenum_%traceback_callNum%=669
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=define
call :defineMath
set /a traceback_callNum=%traceback_callNum%-1
) else if /i "!cmdc:~0,8!"=="function" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$defineFunction
set traceback_linenum_%traceback_callNum%=671
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=define
call :defineFunction
set /a traceback_callNum=%traceback_callNum%-1
) else (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$plainDefine
set traceback_linenum_%traceback_callNum%=673
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=define
call :plainDefine
set /a traceback_callNum=%traceback_callNum%-1
)
exit /b
:endfunction39289769679
goto endfunction40289769679
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
:endfunction40289769679
goto endfunction41289769679
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
:endfunction41289769679
goto endfunction42289769679
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
exit /b
:endfunction42289769679
goto endfunction43289769679
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
exit /b
:endfunction43289769679
goto endfunction44289769679
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
echo(set /a traceback_callNum=%%traceback_callNum%%-1
)>>%opened_file%
exit /b
:endfunction44289769679
goto endfunction45289769679
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
exit /b
:endfunction45289769679
goto endfunction46289769679
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
exit /b
:endfunction46289769679
goto endfunction47289769679
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
exit /b
:endfunction47289769679
goto endfunction48289769679
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
:endfunction48289769679
goto endfunction49289769679
:endFunction
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set functionName=[module]
set opened_file=sys.bat
(
echo(exit /b
echo(:endfunction%functionNumber%%moduleID%
)>>%opened_file%
exit /b
:endfunction49289769679
goto endfunction50289769679
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
exit /b
:endfunction50289769679
goto endfunction51289769679
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
:endfunction51289769679
goto endfunction52289769679
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
exit /b
:endfunction52289769679
goto endfunction53289769679
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
exit /b
:endfunction53289769679
goto endfunction54289769679
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
:endfunction54289769679
goto endfunction55289769679
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
:endfunction55289769679
goto endfunction56289769679
:print
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if "!cmdc!"=="" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$emptyPrint
set traceback_linenum_%traceback_callNum%=825
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
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
set traceback_linenum_%traceback_callNum%=836
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=print
call :sortColours
set /a traceback_callNum=%traceback_callNum%-1
:rawPrint
set opened_file=sys.bat
(
echo(echo(!cmdc!
)>>%opened_file%
exit /b
:endfunction56289769679
goto endfunction57289769679
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
:endfunction57289769679
goto endfunction58289769679
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
exit /b
:endfunction58289769679
goto endfunction59289769679
:wait
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmdc!"=="user" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$waitUser
set traceback_linenum_%traceback_callNum%=854
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=wait
call :waitUser
set /a traceback_callNum=%traceback_callNum%-1
) else (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$waitTime
set traceback_linenum_%traceback_callNum%=856
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=wait
call :waitTime
set /a traceback_callNum=%traceback_callNum%-1
)
exit /b
:endfunction59289769679
goto endfunction60289769679
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
:endfunction60289769679
goto endfunction61289769679
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
exit /b
:endfunction61289769679
goto endfunction62289769679
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
:endfunction62289769679
goto endfunction63289769679
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
:endfunction63289769679
goto endfunction64289769679
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
set traceback_linenum_%traceback_callNum%=894
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=import
call :import_net
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if "!cmdc:~0,6!"=="local:" (
set cmdc=!cmdc:~6!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_local
set traceback_linenum_%traceback_callNum%=899
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=import
call :import_local
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if "!cmdc:~0,8!"=="inbuilt:" (
set cmdc=!cmdc:~8!
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_inbuilt
set traceback_linenum_%traceback_callNum%=904
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=import
call :import_inbuilt
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if exist "!cmdc!.bat" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_local
set traceback_linenum_%traceback_callNum%=908
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=import
call :import_local
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
if exist "%~dp0modules\!cmdc!.bat" (
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_inbuilt
set traceback_linenum_%traceback_callNum%=912
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=import
call :import_inbuilt
set /a traceback_callNum=%traceback_callNum%-1
exit /b
)
set /a traceback_callNum=%traceback_callNum%+1
set traceback_line_%traceback_callNum%=$import_net
set traceback_linenum_%traceback_callNum%=915
set traceback_module_%traceback_callNum%=C2B Compiler
set traceback_moduleID_%traceback_callNum%=289769679
set traceback_function_%traceback_callNum%=import
call :import_net
set /a traceback_callNum=%traceback_callNum%-1
exit /b
:endfunction64289769679
goto endfunction65289769679
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
call :tracing_back_289769679
echo C2B Compiler [module ID 289769679], line 921, in import_net:
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
exit /b
:endfunction65289769679
goto endfunction66289769679
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
call :tracing_back_289769679
echo C2B Compiler [module ID 289769679], line 931, in import_local:
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
:endfunction66289769679
goto endfunction67289769679
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
call :tracing_back_289769679
echo C2B Compiler [module ID 289769679], line 940, in import_inbuilt:
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
:endfunction67289769679
goto endfunction68289769679
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
:endfunction68289769679

@echo off
rem Compiled by the c2b Compiler from c2b v0.8.4. 
rem Module ID: 231012909
set esc=
ver | findstr /c:"Version 10"
if errorlevel 1 goto noWin10231012909
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
goto startOfFile231012909
:noWin10231012909
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
goto startOfFile231012909
:alertJS231012909
mshta javascript:alert("%~1");close();
exit/b
:ifIn231012909
echo %~2 | findstr /c:%~1
exit /b 0
:startOfFile231012909
:: c2b Compiler by Addison Djatschenko
:: Version 0.8.5
set version=0.8.5
setlocal enabledelayedexpansion
title C2B Compiler v%version%
set whileCount=0
set whileWrite=00
set bracketString=
set functionNumber=0
set moduleID=%random%%random%
set functionName=[module]
set tracing_back=0
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
echo(:startOfFile%moduleID%
)>%opened_file%
if %1.==. (
del sys.bat
echo. 
color 0c
echo Exception:  Error: Use c2b compiler by opening a c2b file with it.
echo C2B Compiler [module ID 231012909], line 91, in [module]:
echo raise Error: Use c2b compiler by opening a c2b file with it.
echo Nest: I
pause
exit
)
goto endfunction1231012909
:getFilename
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set fileName=%~nx1
exit /b
:endfunction1231012909
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
:while01231012909
if 1 EQU 1 (
goto whiling01231012909
) else (
goto afterwhile01231012909
)
:whiling01231012909
set /a line=%line%+1
set cmd=~linebreak
set /p cmd="%line% | "
if "!cmd!"=="~linebreak" (
call :linebreak
goto anotherLine
)
call :convertCommand
:anotherLine
goto while01231012909
:afterwhile01231012909
goto endfunction2231012909
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
:endfunction2231012909
goto endfunction3231012909
:abs
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmd!"=="%arg1%" (
call :%arg2%
)
exit /b
:endfunction3231012909
goto endfunction4231012909
:convertCommand
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:while02231012909
if "!cmd:~0,1!"==" " (
goto whiling02231012909
) else (
goto afterwhile02231012909
)
:whiling02231012909
set cmd=!cmd:~1!
goto while02231012909
:afterwhile02231012909
if "!cmd:~0,1!"=="#" (
set cmdc=!cmd:~1,-1!
call :comment
exit /b
)
if /i "!cmd:~0,5!"=="print" (
set cmdc=!cmd:~6,-1!
call :print
exit /b
)
if /i "!cmd:~0,4!"=="wait" (
set cmdc=!cmd:~5,-1!
call :wait
exit /b
)
if /i "!cmd:~0,3!"=="end" (
set cmdc=!cmd:~4,-1!
call :end
exit /b
)
if /i "!cmd:~0,6!"=="export" (
set cmdc=!cmd:~7,-1!
call :export
exit /b
)
if /i "!cmd:~0,4!"=="disp" (
set cmdc=!cmd:~5,-1!
call :disp
exit /b
)
if /i "!cmd:~0,5!"=="clear" (
set cmdc=!cmd:~6,-1!
call :clear
exit /b
)
if /i "!cmd:~0,4!"=="ifin" (
set cmdc=!cmd:~5,-3!
call :ifin
exit /b
)
if /i "!cmd:~0,2!"=="if" (
set cmdc=!cmd:~3,-1!
call :if
exit /b
)
if /i "!cmd:~0,6!"=="} elif" (
set cmdc=!cmd:~7,-1!
call :elif
exit /b
)
if /i "!cmd:~0,3!"=="cmd" (
set cmdc=!cmd:~4,-1!
call :batcmd
exit /b
)
if /i "!cmd:~0,5!"=="title" (
set cmdc=!cmd:~6,-1!
call :title
exit /b
)
if /i "!cmd:~0,6!"=="define" (
set cmdc=!cmd:~7,-1!
call :define
exit /b
)
if /i "!cmd:~0,5!"=="place" (
set cmdc=!cmd:~6,-1!
call :place
exit /b
)
if /i "!cmd:~0,4!"=="goto" (
set cmdc=!cmd:~5,-1!
call :goto
exit /b
)
if "!cmd:~0,1!"=="$" (
set cmdc=!cmd:~2,-1!
call :callFunction
exit /b
)
if /i "!cmd:~0,6!"=="prompt" (
set cmdc=!cmd:~7,-1!
call :prompt
exit /b
)
if /i "!cmd:~0,8!"=="download" (
set cmdc=!cmd:~9,-1!
call :download
exit /b
)
if /i "!cmd:~0,3!"=="ren" (
set cmdc=!cmd:~4,-1!
call :ren
exit /b
)
if /i "!cmd:~0,3!"=="del" (
set cmdc=!cmd:~4,-1!
call :del
exit /b
)
if /i "!cmd:~0,6!"=="mkfile" (
set cmdc=!cmd:~7,-1!
call :mkfile
exit /b
)
if /i "!cmd:~0,8!"=="mkfolder" (
set cmdc=!cmd:~9,-1!
call :mkfolder
exit /b
)
if /i "!cmd:~0,4!"=="file" (
set cmdc=!cmd:~5,-1!
call :file
exit /b
)
if /i "!cmd:~0,4!"=="play" (
set cmdc=!cmd:~5,-1!
call :play
exit /b
)
if /i "!cmd:~0,5!"=="while" (
set cmdc=!cmd:~6,-1!
call :while
exit /b
)
if /i "!cmd:~0,4!"=="incr" (
set cmdc=!cmd:~5,-1!
call :incr
exit /b
)
if /i "!cmd:~0,6!"=="repeat" (
set cmdc=!cmd:~7,-1!
call :repeat
exit /b
)
if /i "!cmd:~0,5!"=="break" (
set cmdc=!cmd:~6,-1!
call :break
exit /b
)
if /i "!cmd:~0,6!"=="return" (
set cmdc=!cmd:~7,-1!
call :return
exit /b
)
if /i "!cmd:~0,4!"=="open" (
set cmdc=!cmd:~5,-1!
call :open
exit /b
)
if /i "!cmd:~0,4!"=="skey" (
set cmdc=!cmd:~5,-1!
call :skey
exit /b
)
if /i "!cmd:~0,2!"=="ps" (
set cmdc=!cmd:~3,-1!
call :ps
exit /b
)
if /i "!cmd:~0,5!"=="alert" (
set cmdc=!cmd:~6,-1!
call :alert
exit /b
)
if /i "!cmd:~0,5!"=="color" (
set cmdc=!cmd:~6,-1!
call :colour
exit /b
)
if /i "!cmd:~0,6!"=="colour" (
set cmdc=!cmd:~7,-1!
call :colour
exit /b
)
if /i "!cmd:~0,7!"=="restart" (
set cmdc=!cmd:~8,-1!
call :restart
exit /b
)
if /i "!cmd:~0,3!"=="out" (
set cmdc=!cmd:~4,-1!
call :out
exit /b
)
if /i "!cmd:~0,7!"=="rewrite" (
set cmdc=!cmd:~8,-1!
call :rewrite
exit /b
)
if /i "!cmd:~0,6!"=="choice" (
set cmdc=!cmd:~7,-1!
call :choice
exit /b
)
if /i "!cmd:~0,4!"=="stop" (
set cmdc=!cmd:~5,-1!
call :stop
exit /b
)
if /i "!cmd:~0,5!"=="close" (
set cmdc=!cmd:~6,-1!
call :stop
exit /b
)
if /i "!cmd:~0,6!"=="import" (
set cmdc=!cmd:~7!
call :import
exit /b
)
if /i "!cmd:~0,5!"=="raise" (
set cmdc=!cmd:~5!
call :raise
exit /b
)
if "!cmd:~0,1!"=="[" (
set cmdc=!cmd:~2,-1!
call :setQuick
exit /b
)
call :abs } closeBracket
call :abs "} else {" else
exit /b
:endfunction4231012909
goto endfunction5231012909
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
:endfunction5231012909
goto endfunction6231012909
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
:endfunction6231012909
goto endfunction7231012909
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
:endfunction7231012909
goto endfunction8231012909
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
call :sortColours
:rawRewrite
set opened_file=sys.bat
(
echo(echo %%escRewrite%%!cmdc!
)>>%opened_file%
exit /b
:endfunction8231012909
goto endfunction9231012909
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
call :sortColours
:rawOut
set opened_file=sys.bat
(
echo(echo ^| set /p ^^="!cmdc!"
)>>%opened_file%
exit /b
:endfunction9231012909
goto endfunction10231012909
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
:endfunction10231012909
goto endfunction11231012909
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
:endfunction11231012909
goto endfunction12231012909
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
:endfunction12231012909
goto endfunction13231012909
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
:endfunction13231012909
goto endfunction14231012909
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
:endfunction14231012909
goto endfunction15231012909
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
:endfunction15231012909
goto endfunction16231012909
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
:endfunction16231012909
goto endfunction17231012909
:file
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set cmd=!cmdc!
if /i "!cmd:~0,5!"=="write" (
set cmdc=!cmd:~6,-1!
call :write
) else if /i "!cmd:~0,6!"=="append" (
set cmdc=!cmd:~7,-1!
call :append
)
set cmdc=!cmdc:~0,-1!
set opened_file=sys.bat
(
echo(set opened_file=!cmdc!
echo((
)>>%opened_file%
exit /b
:endfunction17231012909
goto endfunction18231012909
:append
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set bracketString=%bracketString%A
exit /b
:endfunction18231012909
goto endfunction19231012909
:write
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set bracketString=%bracketString%R
exit /b
:endfunction19231012909
goto endfunction20231012909
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
:endfunction20231012909
goto endfunction21231012909
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
exit /b
:endfunction21231012909
goto endfunction22231012909
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
exit /b
:endfunction22231012909
goto endfunction23231012909
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
:endfunction23231012909
goto endfunction24231012909
:closeBracket
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if "%bracketString:~-1,1%"=="I" (
call :endIf
) else if "%bracketString:~-1,1%"=="W" (
call :endWhile
) else if "%bracketString:~-1,1%"=="F" (
call :endFunction
) else if "%bracketString:~-1,1%"=="R" (
call :endWrite
) else if "%bracketString:~-1,1%"=="A" (
call :endAppend
)
set bracketString=%bracketString:~0,-1%
exit /b
:endfunction24231012909
goto endfunction25231012909
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
:endfunction25231012909
goto endfunction26231012909
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
:endfunction26231012909
goto endfunction27231012909
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
:endfunction27231012909
goto endfunction28231012909
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
:endfunction28231012909
goto endfunction29231012909
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
:endfunction29231012909
goto endfunction30231012909
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
:endfunction30231012909
goto endfunction31231012909
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
:endfunction31231012909
goto endfunction32231012909
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
:endfunction32231012909
goto endfunction33231012909
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
:endfunction33231012909
goto endfunction34231012909
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
:endfunction34231012909
goto endfunction35231012909
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
:endfunction35231012909
goto endfunction36231012909
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
:endfunction36231012909
goto endfunction37231012909
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
:endfunction37231012909
goto endfunction38231012909
:define
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmdc:~0,4!"=="text" (
call :defineText
) else if /i "!cmdc:~0,6!"=="prompt" (
call :definePrompt
) else if /i "!cmdc:~0,4!"=="math" (
call :defineMath
) else if /i "!cmdc:~0,8!"=="function" (
call :defineFunction
) else (
call :plainDefine
)
exit /b
:endfunction38231012909
goto endfunction39231012909
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
:endfunction39231012909
goto endfunction40231012909
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
:endfunction40231012909
goto endfunction41231012909
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
:endfunction41231012909
goto endfunction42231012909
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
:endfunction42231012909
goto endfunction43231012909
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
exit /b
:endfunction43231012909
goto endfunction44231012909
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
:endfunction44231012909
goto endfunction45231012909
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
:endfunction45231012909
goto endfunction46231012909
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
:endfunction46231012909
goto endfunction47231012909
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
:endfunction47231012909
goto endfunction48231012909
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
exit /b
:endfunction48231012909
goto endfunction49231012909
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
:endfunction49231012909
goto endfunction50231012909
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
:endfunction50231012909
goto endfunction51231012909
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
:endfunction51231012909
goto endfunction52231012909
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
:endfunction52231012909
goto endfunction53231012909
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
:endfunction53231012909
goto endfunction54231012909
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
:endfunction54231012909
goto endfunction55231012909
:print
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if "!cmdc!"=="" (
call :emptyPrint
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
call :sortColours
:rawPrint
set opened_file=sys.bat
(
echo(echo(!cmdc!
)>>%opened_file%
exit /b
:endfunction55231012909
goto endfunction56231012909
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
:endfunction56231012909
goto endfunction57231012909
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
:endfunction57231012909
goto endfunction58231012909
:wait
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if /i "!cmdc!"=="user" (
call :waitUser
) else (
call :waitTime
)
exit /b
:endfunction58231012909
goto endfunction59231012909
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
:endfunction59231012909
goto endfunction60231012909
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
:endfunction60231012909
goto endfunction61231012909
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
:endfunction61231012909
goto endfunction62231012909
:raise
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
set /a tracing_back=%tracing_back%+1
set opened_file=sys.bat
(
echo(echo. 
echo(color 0c
echo(echo Exception: !cmdc!
echo(echo.
echo(echo Traceback [most recent call last]:
echo(echo.
echo(set tracing_back=0
echo(:tracing_back_%tracing_back%_%moduleID%
echo(if %%tracing_back%%==%%traceback_callNum%% goto end_tracing_back_%tracing_back%_%moduleID%
echo(set /a tracing_back=%%tracing_back%%+1
echo(call echo %%%%traceback_module_%%tracing_back%%%%%% [module ID %%%%traceback_moduleID_%%tracing_back%%%%%%], line %%%%traceback_linenum_%%tracing_back%%%%%%, in %%%%traceback_function_%%tracing_back%%%%%%:
echo(call echo %%%%traceback_line_%%tracing_back%%%%%%
echo(goto tracing_back_%tracing_back%_%moduleID%
echo(:end_tracing_back_%tracing_back%_%moduleID%
echo(echo %moduleName% [module ID %moduleID%], line %line%, in %functionName%:
echo(echo !cmd!
echo(echo.
echo(pause
echo(exit
)>>%opened_file%
exit /b
:endfunction62231012909
goto endfunction63231012909
:import
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if "!cmdc:~0,4!"=="net:" (
set cmdc=!cmdc:~4!
call :import_net
exit /b
)
if "!cmdc:~0,6!"=="local:" (
set cmdc=!cmdc:~6!
call :import_local
exit /b
)
if "!cmdc:~0,8!"=="inbuilt:" (
set cmdc=!cmdc:~8!
call :import_inbuilt
exit /b
)
if exist "!cmdc!.bat" (
call :import_local
exit /b
)
if exist "%~dp0modules\!cmdc!.bat" (
call :import_inbuilt
exit /b
)
call :import_net
exit /b
:endfunction63231012909
goto endfunction64231012909
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
echo Exception:  Error: Cannot find online module.
echo C2B Compiler [module ID 231012909], line 878, in import_net:
echo raise Error: Cannot find online module.
echo Nest: FI
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
:endfunction64231012909
goto endfunction65231012909
:import_local
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if not exist "!cmdc!.bat" (
echo. 
color 0c
echo Exception:  Error: Cannot find local module.
echo C2B Compiler [module ID 231012909], line 888, in import_local:
echo raise Error: Cannot find local module.
echo Nest: FI
pause
exit
)
set opened_file=sys.bat
(
type "!cmdc!.bat"
echo.
)>>%opened_file%
exit /b
:endfunction65231012909
goto endfunction66231012909
:import_inbuilt
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
if not exist "%~dp0modules\!cmdc!.bat" (
echo. 
color 0c
echo Exception:  Error: Cannot find inbuilt module
echo C2B Compiler [module ID 231012909], line 897, in import_inbuilt:
echo raise Error: Cannot find inbuilt module
echo Nest: FI
pause
exit
)
set opened_file=sys.bat
(
type "%~dp0modules\!cmdc!.bat"
echo.
)>>%opened_file%
exit /b
:endfunction66231012909
goto endfunction67231012909
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
cls
call %new_location%
exit
exit /b
:endfunction67231012909

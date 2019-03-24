:: Made by Addison Djatschenko
:: Version 0.4.0
@echo off
set version=04.0
setlocal enabledelayedexpansion
title c2b Compiler
set whileCount=0
set whileWrite=00
set bracketString=
set functionNumber=0
goto start

:start
:: Starts making the compiled file
(
@echo off
echo @echo off
echo rem Compiled by the c2b Compiler from c2b v%version%. 
echo ver ^| findstr /c:"Version 10"
echo if errorlevel 1 goto noWin10
echo set esc0m=[0m
echo set esc1m=[1m
echo set esc4m=[4m
echo set esc7m=[7m
echo set esc30m=[30m
echo set esc31m=[31m
echo set esc32m=[32m
echo set esc33m=[33m
echo set esc34m=[34m
echo set esc35m=[35m
echo set esc36m=[36m
echo set esc37m=[37m
echo set esc40m=[40m
echo set esc41m=[41m
echo set esc42m=[42m
echo set esc43m=[43m
echo set esc44m=[44m
echo set esc45m=[45m
echo set esc46m=[46m
echo set esc47m=[47m
echo set esc90m=[90m
echo set esc91m=[91m
echo set esc92m=[92m
echo set esc93m=[93m
echo set esc94m=[94m
echo set esc95m=[95m
echo set esc96m=[96m
echo set esc97m=[97m
echo set esc100m=[100m
echo set esc101m=[101m
echo set esc102m=[102m
echo set esc103m=[103m
echo set esc104m=[104m
echo set esc105m=[105m
echo set esc106m=[106m
echo set esc107m=[107m
echo cls
echo goto startOfFile
echo :noWin10
echo set esc30m=^^^&powershell write-host -NoNewline -fore Black 
echo set esc34m=^^^&powershell write-host -NoNewline -fore Blue 
echo set esc32m=^^^&powershell write-host -NoNewline -fore Green 
echo set esc36m=^^^&powershell write-host -NoNewline -fore Cyan 
echo set esc31m=^^^&powershell write-host -NoNewline -fore Red 
echo set esc35m=^^^&powershell write-host -NoNewline -fore Magenta 
echo set esc33m=^^^&powershell write-host -NoNewline -fore Yellow 
echo set esc37m=^^^&powershell write-host -NoNewline -fore White 
echo set esc90m=^^^&powershell write-host -NoNewline -fore Gray 
echo set esc94m=^^^&powershell write-host -NoNewline -fore Blue 
echo set esc92m=^^^&powershell write-host -NoNewline -fore Green 
echo set esc96m=^^^&powershell write-host -NoNewline -fore Cyan 
echo set esc91m=^^^&powershell write-host -NoNewline -fore Red 
echo set esc95m=^^^&powershell write-host -NoNewline -fore Magenta 
echo set esc93m=^^^&powershell write-host -NoNewline -fore Yellow 
echo set esc97m=^^^&powershell write-host -NoNewline -fore White 
echo set esc0m=^^^&echo(
echo cls
echo goto startOfFile
echo :alertJS
echo mshta javascript:alert("%%~1"^);close(^);
echo exit/b
echo :startOfFile
)>sys.bat
(
@echo off
)>sys.c2b
set hasBeenOpened=false
if %1. NEQ . goto opened
cls
echo 1= Start new
echo 2= Import from c2b
echo 3= Exit
set /p home= "-->"
if %home%==2 goto importc2b
if %home%==3 exit
cls
set fromFile=false
set /p xt= "Script Name: "
echo Type the program here:
goto compile

:er
cls
:: If the file is wrong
echo Not existent!
pause
goto start

:importc2b
cls
echo c2b Name (without .c2b):
set /p xt= ""
if not exist "%xt%.c2b" goto er
:: Copies the script and a new line to the clipboard
(
type "%~dp0%xt%.c2b"
echo.
)|clip
cls
:right_click
echo Automatically compiling...
set skey_id=%random%
(
echo Set WshShell = WScript.CreateObject("WScript.Shell"^)
echo WshShell.SendKeys "^(v)"
)>"%temp%\%skey_id%.vbs"
start "" "%temp%\%skey_id%.vbs"
set fromFile=true
goto compile

:opened
set hasBeenOpened=true
set location=%1
(
type %location%
echo.
)|clip
del %location:~0,-4%.bat"
goto right_click

:compile
:: From here on is the compiling system, it is fairly straightforward and adds comments to the compiled batch file. 
set /a line=%line%+1
set cmd=~linebreak
set /p cmd= "%line% | "
if "!cmd!"=="~linebreak" goto linebreak
if %hasBeenOpened%==true goto afterWrite
(
@echo off
type "sys.c2b"
echo !cmd!
)>sys-2.c2b
del "sys.c2b"
ren "sys-2.c2b" "sys.c2b"
:afterWrite
call :convertCommand
:acb
goto compile

:linebreak
if %hasBeenOpened%==true goto afterWriteBreak
(
@echo off
type "sys.c2b"
echo.
)>sys-2.c2b
del "sys.c2b"
ren "sys-2.c2b" "sys.c2b"
:afterWriteBreak
(
@echo off
type "sys.bat"
echo.
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
goto acb

:convertCommand
if "!cmd:~0,1!"==" " (
set cmd=!cmd:~1!
call :convertCommand
exit /b
)
if "!cmd:~0,1!"=="	" (
set cmd=!cmd:~1!
call :convertCommand
exit /b
)
set emptyPrint=false
if "!cmd:~0,1!"=="#" call :comment
if "!cmd:~0,7!"=="print[]" (
set emptyPrint=true
call :emptyPrint
)
if "!cmd:~0,6!"=="print[" (
if %emptyPrint%==false call :echo
)
if "!cmd:~0,5!"=="wait[" call :wait
if "!cmd!"=="end[file]" call :exit
if "!cmd:~0,6!"=="export" call :compilend
if "!cmd:~0,9!"=="disp[max]" call :dispmax
if "!cmd:~0,5!"=="clear" call :cls
if "!cmd:~0,3!"=="if[" call :if
if "!cmd!"=="}" call :closeBracket
if "!cmd!"=="} else {" call :else
if "!cmd:~0,7!"=="} elif[" call :elif
if "!cmd:~0,4!"=="cmd[" call :batchcmd
if "!cmd:~0,6!"=="title[" call :title
if "!cmd:~0,16!"=="define.function[" call :startFunction
if "!cmd:~0,6!"=="place[" call :place
if "!cmd:~0,5!"=="goto[" call :gotoPlace
if "!cmd:~0,1!"=="$" call :callFunction
if "!cmd:~0,12!"=="define.text[" call :defineText
if "!cmd:~0,7!"=="define[" call :define
if "!cmd:~0,14!"=="define.prompt[" call :setp
if "!cmd:~0,7!"=="prompt[" call :prompt
if "!cmd:~0,12!"=="define.math[" call :defineMath
if "!cmd:~0,9!"=="download[" call :download
if "!cmd:~0,4!"=="ren[" call :rename
if "!cmd:~0,4!"=="del[" call :delete
if "!cmd:~0,7!"=="mkfile[" call :mkfile
if "!cmd:~0,9!"=="mkfolder[" call :mkfolder
if "!cmd:~0,11!"=="file.write[" call :startFileWrite
if "!cmd:~0,12!"=="file.append[" call :startFileAppend
if "!cmd:~0,5!"=="play[" call :play
if "!cmd:~0,6!"=="while[" call :startWhile
if "!cmd:~0,5!"=="incr[" call :increment
if "!cmd:~0,7!"=="repeat[" call :repeat
if "!cmd:~0,5!"=="break" call :break
if "!cmd:~0,6!"=="return" call :return
if "!cmd:~0,1!"=="[" call :setQuick
if "!cmd:~0,5!"=="open[" call :open_cmd
if "!cmd:~0,5!"=="skey[" call :sendKey
if "!cmd:~0,3!"=="ps[" call :ps
if "!cmd:~0,6!"=="alert[" call :alert
if "!cmd:~0,6!"=="color[" call :mainColor
if "!cmd:~0,7!"=="colour[" call :mainColour
if "!cmd:~0,7!"=="restart" call :restartProgram
if "!cmd:~0,4!"=="out[" call :output
exit /b

:output
set cmdc=!cmd:~4,-1!
if "!cmdc!"==" " goto spaceOutput
(
@echo off
type sys.bat
echo echo ^| set /p ^^="!cmdc!"
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:spaceOutput
(
@echo off
type sys.bat
echo echo ^| set /p ^^="%%esc30m%%%%esc40m%%.%%esc0m%%"
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:restartProgram
(
@echo off
type sys.bat
echo goto startOfFile
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:mainColour
set cmdc=!cmd:~7,-1!
(
@echo off
type sys.bat
echo color !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:mainColor
set cmdc=!cmd:~6,-1!
(
@echo off
type sys.bat
echo color !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:alert
set cmdc=!cmd:~6,-1!
set cmdc=!cmdc:"='!
(
@echo off
type sys.bat
echo call :alertJS "!cmdc!"
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:elif
set cmdc=!cmd:~7,-3!
(
@echo off
type sys.bat
echo ^) else if !cmdc! (
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:js
set cmdc=!cmd:~3,-1!
(
@echo off
type "sys.bat"
echo call :runJS "!cmdc!"
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:jsOld
set cmdc=!cmd:~3,-1!
(
@echo off
type "sys.bat"
echo set skey_id=%%random%%
echo (
echo echo var console = {
echo echo     info: function (s^^^){
echo echo        WSH.Echo(s^^^);
echo echo     }
echo echo }
echo echo var document = {
echo echo     write : function (s^^^){
echo echo         WSH.Echo(s^^^);
echo echo     }
echo echo }
echo echo var alert = function (s^^^){
echo echo     WSH.Echo(s^^^);
echo echo }
echo echo.
echo ^)^>"%%temp%%\%%skey_id%%.js"
echo echo !cmdc! ^>^>"%%temp%%\%%skey_id%%.js"
echo start "" "%%temp%%\%%skey_id%%.js"
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:ps
set cmdc=!cmd:~3,-1!
set cmdc=!cmdc:"='!
(
@echo off
type "sys.bat"
echo powershell -Command "!cmdc!"
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:else
(
@echo off
type "sys.bat"
echo ^) else (
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:sendKey
set cmdc=!cmd:~5,-1!
(
@echo off
type "sys.bat"
echo set skey_id=%%random%%
echo (
echo echo Set WshShell = WScript.CreateObject("WScript.Shell"^^^)
echo echo WshShell.SendKeys "!cmdc!"
echo ^)^>"%%temp%%\%%skey_id%%.vbs"
echo start "" "%%temp%%\%%skey_id%%.vbs"
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:startFileAppend
set bracketString=%bracketString%A
set cmdc=!cmd:~12,-3!
(
@echo off
type "sys.bat"
echo set opened_file=!cmdc!
echo (
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:startFileWrite
set bracketString=%bracketString%R
set cmdc=!cmd:~11,-3!
(
@echo off
type "sys.bat"
echo set opened_file=!cmdc!
echo (
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:open_cmd
set cmdc=!cmd:~5,-1!
(
@echo off
type sys.bat
echo start "" !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:setQuick
set cmdc=!cmd:~1,-1!
(
@echo off
type sys.bat
echo set !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:return
(
@echo off
type sys.bat
echo exit /b
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:break
set whileWriting=%whileWrite:~-2,2%
(
@echo off
type sys.bat
echo goto afterwhile%whileWriting%
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:closeBracket
if "%bracketString:~-1,1%"=="I" call :endif
if "%bracketString:~-1,1%"=="W" call :endWhile
if "%bracketString:~-1,1%"=="F" call :endFunction
if "%bracketString:~-1,1%"=="R" call :endFileWrite
if "%bracketString:~-1,1%"=="A" call :endFileAppend
set bracketString=%bracketString:~0,-1%
exit /b

:repeat
set cmdc=!cmd:~7,-3!
set bracketString=%bracketString%W
set /a whileCount=%whileCount%+1
set whileWriting=%whileCount%
if "%whileWriting:~1,1%"=="" set whileWriting=0%whileWriting%
set whileWrite=%whileWrite%%whileWriting%
(
@echo off
type "sys.bat"
echo set repeatCounting%whileWriting%=-1
echo call :while%whileWriting%
echo goto afterwhile%whileWriting%
echo :while%whileWriting%
echo set /a repeatCounting%whileWriting%=%%repeatCounting%whileWriting%%%+1
echo if %%repeatCounting%whileWriting%%% LSS !cmdc! call :whiling%whileWriting%
echo goto afterwhile%whileWriting%
echo exit /b
echo :whiling%whileWriting%
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:increment
set cmdc=!cmd:~5,-1!
(
@echo off
type sys.bat
echo set /a !cmdc!=%%!cmdc!%%+1
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:startWhile
set cmdc=!cmd:~6,-3!
set cmdc=!cmdc:^>= GTR !
set cmdc=!cmdc:^<= LSS !
set cmdc=!cmdc:True=1 EQU 1!
set cmdc=!cmdc:true=1 EQU 1!
set bracketString=%bracketString%W
set /a whileCount=%whileCount%+1
set whileWriting=%whileCount%
if "%whileWriting:~1,1%"=="" set whileWriting=0%whileWriting%
set whileWrite=%whileWrite%%whileWriting%
(
@echo off
type "sys.bat"
echo :while%whileWriting%
echo if !cmdc! (
echo goto whiling%whileWriting%
echo ^) else (
echo goto afterwhile%whileWriting%
echo ^)
echo :whiling%whileWriting%
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:endWhile
set whileWriting=%whileWrite:~-2,2%
set whileWrite=%whileWrite:~0,-2%
(
@echo off
type "sys.bat"
echo goto while%whileWriting%
echo :afterwhile%whileWriting%
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:play
set cmdc=!cmd:~5,-1!
(
@echo off
type "sys.bat"
echo powershell [console]::Beep(!cmdc!^)
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:endFileWrite
(
@echo off
type "sys.bat"
echo ^)^>%%opened_file%%
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:endFileAppend
(
@echo off
type "sys.bat"
echo ^)^>^>%%opened_file%%
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:mkfolder
set cmdc=!cmd:~9,-1!
(
@echo off
type "sys.bat"
echo md !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:mkfile
set cmdc=!cmd:~7,-1!
(
@echo off
type "sys.bat"
echo echo.^>!cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:delete
set cmdc=!cmd:~4,-1!
(
@echo off
type "sys.bat"
echo del !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:rename
set cmdc=!cmd:~4,-1!
(
@echo off
type "sys.bat"
echo ren !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:download
set cmdc=!cmd:~9,-1!
(
@echo off
type "sys.bat"
echo powershell -Command "(New-Object Net.WebClient).DownloadFile('!cmdc!', 'download')"
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:prompt
set cmdc=!cmd:~7,-1!
(
@echo off
type "sys.bat"
echo set /p !cmdc!=""
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:setp
set cmdc=!cmd:~14,-1!
(
@echo off
type "sys.bat"
echo set /p !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:defineMath
set cmdc=!cmd:~12,-1!
(
@echo off
type "sys.bat"
echo set /a !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:defineText
set cmdc=!cmd:~12,-1!
(
@echo off
type "sys.bat"
echo set !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:define
set cmdc=!cmd:~7,-1!
(
@echo off
type "sys.bat"
echo set !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:parseGetColumn
set /a parsingColumn=%parsingColumn%+1
set parsedCharacter=.false.
call set parsedCharacter=!!cmd:~%parsingColumn%,1!!
if "!parsedCharacter!"=="!parsingLookFor!" (
set parsingResult=true
exit /b
)
if "!parsedCharacter!"==".false." (
set parsingResult=false
exit /b
)
call :parseGetColumn
exit /b

:callFunction
set cmdc=!cmd:~1!
::set cmdd=.false.
::set parsingColumn=-1
::set parsedCharacter=.false.
::set parsingLookFor=,
::set parsingResult=no
::call :parseGetColumn
::set /a parsingColumn=%parsingColumn%+1
::if %parsingResult%==true (
::call set cmdd=!!cmd:~%parsingColumn%!!
::)
::set /a parsingColumn=%parsingColumn%-2
::call set cmdc=!!cmd:~1,%parsingColumn%!!

(
@echo off
type "sys.bat"
::echo set arg1=!cmdd!
echo call :!cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:gotoPlace
set cmdc=!cmd:~5,-1!
(
@echo off
type "sys.bat"
echo goto !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:place
set cmdc=!cmd:~6,-1!
(
@echo off
type "sys.bat"
echo :!cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:title
set cmdc=!cmd:~6,-1!
(
@echo off
type "sys.bat"
echo title !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:comment
set cmdc=!cmd:~1!
(
@echo off
type "sys.bat"
echo ::!cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:endFunction
(
@echo off
type "sys.bat"
echo exit /b
echo :endfunction%functionNumber%
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:startFunction
set bracketString=%bracketString%F
set /a functionNumber=%functionNumber%+1
set cmdc=!cmd:~16,-3!
(
@echo off
type "sys.bat"
echo goto endfunction%functionNumber%
echo :!cmdc!
echo set arg1=%%~1
echo set arg2=%%~2
echo set arg3=%%~3
echo set arg4=%%~4
echo set arg5=%%~5
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:batchcmd
set cmdc=!cmd:~4,-1!
(
@echo off
type "sys.bat"
echo !cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:endif
(
@echo off
type "sys.bat"
echo ^)
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:if
set cmdc=!cmd:~3,-3!
set cmdc=!cmdc:^>= GTR !
set cmdc=!cmdc:^<= LSS !
set bracketString=%bracketString%I
(
@echo off
type "sys.bat"
echo if !cmdc! ^(
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:dispmax
(
@echo off
type "sys.bat"
echo mode 1000
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:echo
set cmdc=!cmd:~6,-1!
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
(
@echo off
type "sys.bat"
echo echo(!cmdc!
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:emptyPrint
(
@echo off
type "sys.bat"
echo echo. 
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:exit
(
type "sys.bat"
echo exit
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:wait
set cmdc=!cmd:~5,-1!
if "!cmdc!"=="user" (
call :waitUser
exit /b
)
(
@echo off
type "sys.bat"
echo timeout /t !cmdc! /nobreak ^>nul
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:waitUser
(
@echo off
type "sys.bat"
echo pause^>nul
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:cls
(
type "sys.bat"
echo cls
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:compilend
:: End of compiling
(
@echo off
type "sys.bat"
echo echo Program finished. 
echo echo Press any key to exit.
echo pause^>nul
echo exit
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
:: Clears the clipboard
(
@echo off
)|clip
:: Renames the compiled file into the name the user entered
if %hasBeenOpened%==true goto endOpen
(
@echo off
type "sys.c2b"
)>sys-2.c2b
del "sys.c2b"
ren "sys-2.c2b" "sys.c2b"
del "compiled_%xt%.bat"
del "%xt%.c2b"
ren "sys.bat" "compiled_%xt%.bat"
ren "sys.c2b" "%xt%.c2b"
echo. 
cls
:ec
set ce=nul
echo Compiled!
echo. 
echo. 
:: Gives a few options. The user can edit in Notepad (or anything), a feature I added recently with the copy/paste idea. 
echo 1= Run program
echo 2= Open C2B in notepad
echo 3= Exit
set /p ce= "-->"
if "%ce%"=="1" goto rp
if "%ce%"=="3" exit
if "%ce%"=="2" (
start notepad "%~dp0%xt%.c2b"
cls
goto ec
)
cls
goto ec

:rp
endlocal
cls
:: Runs program
call "compiled_%xt%.bat"
cls
goto ec

:endOpen
set new_location=%location:~0,-4%.bat"
copy sys.bat %new_location%
del sys.bat
del sys.c2b
title 
endlocal
cls
call %new_location%
exit

:: Made by Addison Djatschenko
:: Version 0.3.0
set version=03
@echo off
setlocal enabledelayedexpansion
mode 1000
title c2b Compiler
goto start

:start
:: Starts making the compiled file
(
@echo off
echo @echo off
echo rem Compiled by the c2b Compiler from c2b v%version%. 
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
)|clip
cls
:right_click
echo Right-click to confirm:
:: When the user right clicks, the script and a new line will be pasted and dealt with as if the user had written it himself - a rather neat concept I would say!
set fromFile=true
goto compile

:opened
set hasBeenOpened=true
set location=%1
(
type %location%
)|clip
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
if "!cmd!"=="end[function]" call :endFunction
if "!cmd:~0,6!"=="export" call :compilend
if "!cmd:~0,9!"=="disp[max]" call :dispmax
if "!cmd:~0,5!"=="clear" call :cls
if "!cmd:~0,3!"=="if[" call :if
if "!cmd!"=="}" call :endif
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
if "!cmd:~0,8!"=="download[" call :download
if "!cmd:~0,4!"=="ren[" call :rename
if "!cmd:~0,4!"=="del[" call :delete
if "!cmd:~0,7!"=="mkfile[" call :mkfile
if "!cmd:~0,9!"=="mkfolder[" call :mkfolder
if "!cmd:~0,9!"=="file.set[" call :openFile
if "!cmd!"=="file.write[]:" call :startFileWrite
if "!cmd!"=="end[write]" call :endFileWrite
if "!cmd:~0,5!"=="play[" call :play
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

:startFileWrite
(
@echo off
type "sys.bat"
echo (
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:openFile
set cmdc=!cmd:~9,-1!
(
@echo off
type "sys.bat"
echo set opened_file=!cmdc!
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
set cmdc=!cmd:~8,-1!
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
)>sys2.bat
del "sys.bat"
ren "sys2.bat" "sys.bat"
exit /b

:startFunction
set cmdc=!cmd:~16,-2!
(
@echo off
type "sys.bat"
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
:savecho
(
@echo off
type "sys.bat"
echo echo !cmdc!
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
start explorer %new_location%
exit
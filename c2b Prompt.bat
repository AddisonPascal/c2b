@echo off
title c2b Prompt
color 0c
cls
echo c2b Prompt for c2b 0.2
echo. 
:compile
set cmd=linebreak
echo. 
set /p cmd= "c2b %~dp0> "
echo. 
if "%cmd%"=="linebreak" goto linebreak
set emptyPrint=false
if "%cmd:~0,1%"=="#" goto comment
if "%cmd:~0,7%"=="print[]" (
set emptyPrint=true
goto emptyPrint
)
if "%cmd:~0,6%"=="print[" (
if %emptyPrint%==false goto echo
)
if "%cmd:~0,5%"=="wait[" goto wait
if "%cmd%"=="end[file]" goto exit
if "%cmd%"=="end[function]" goto endFunction
if "%cmd:~0,6%"=="export" goto compilend
if "%cmd:~0,9%"=="disp[max]" goto dispmax
if "%cmd:~0,5%"=="clear" goto cls
if "%cmd:~0,3%"=="if[" goto if
if "%cmd%"=="}" goto endif
if "%cmd:~0,4%"=="cmd[" goto batchcmd
if "%cmd:~0,6%"=="title[" goto title
if "%cmd:~0,16%"=="define.function[" goto startFunction
if "%cmd:~0,6%"=="place[" goto place
if "%cmd:~0,5%"=="goto[" goto gotoPlace
if "%cmd:~0,1%"=="$" goto callFunction
if "%cmd:~0,12%"=="define.text[" goto defineText
if "%cmd:~0,7%"=="define[" goto define
if "%cmd:~0,14%"=="define.prompt[" goto setp
if "%cmd:~0,7%"=="prompt[" goto prompt
if "%cmd:~0,12%"=="define.math[" goto defineMath
echo Error: %cmd% was not recognised as a command. 
goto compile

:linebreak
goto compile

:prompt
set cmdc=%cmd:~7,-1%
set /p %cmdc%=""
goto compile

:setp
set cmdc=%cmd:~14,-1%
set /p %cmdc%
goto compile

:defineMath
set cmdc=%cmd:~12,-1%
set /a %cmdc%
goto compile

:defineText
set cmdc=%cmd:~12,-1%
set %cmdc%
goto compile

:define
set cmdc=%cmd:~7,-1%
set %cmdc%
goto compile

:callFunction
echo Error: Cannot call functions in prompt
goto compile

:gotoPlace
echo Error: Cannot go to place in prompt.
goto compile

:place
echo Error: Cannot define place in prompt.
goto compile

:title
set cmdc=%cmd:~6,-1%
title %cmdc%
goto compile

:comment
set cmdc=%cmd:~1%
::%cmdc%
goto compile

:endFunction
echo Error: Cannot end function if function is not being defined. 
goto compile

:startFunction
echo Error: Cannot define function in prompt. 
goto compile

:batchcmd
set cmdc=%cmd:~4,-1%
%cmdc%
goto compile

:endif
echo Error: Cannot end non existent if statement. 
goto compile

:if
echo Error: Cannot define if statement in prompt.
goto compile

:dispmax
mode 1000
goto compile

:echo
set cmdc=%cmd:~6,-1%
echo %cmdc%
goto compile

:emptyPrint
echo. 
goto compile

:exit
exit
goto compile

:wait
set cmdc=%cmd:~5,-1%
if "%cmdc%"=="user" (
goto waitUser
goto compile
)
timeout /t %cmdc% /nobreak ^>nul
goto compile

:waitUser
pause>nul
goto compile

:cls
cls
goto compile

:compilend
echo Error: Cannot compile from prompt.
goto compile
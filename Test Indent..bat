@echo off
rem Compiled by the c2b Compiler from c2b v03. 
title Testing Whiles and Indents...
set a=1
set b=1
call :while01
goto afterwhile01
:while01
if %a% LSS 10 call :whiling01
exit /b
:whiling01
echo %a%
set b=1
call :while02
goto afterwhile02
:while02
if %b% LSS 10 call :whiling02
exit /b
:whiling02
echo }%b%
set /a b=%b%+1
call :while02
exit /b
:afterwhile02
set /a a=%a%+1
call :while01
exit /b
:afterwhile01
echo Done!
echo. 
echo Testing Repeats:
set repeatCounting03=0
call :while03
goto afterwhile03
:while03
if %repeatCounting03% NEQ 10 call :whiling03
set /a repeatCounting03=%repeatCounting03%+1
goto afterwhile03
exit /b
:whiling03
echo DOING
call :while03
exit /b
:afterwhile03
pause>nul

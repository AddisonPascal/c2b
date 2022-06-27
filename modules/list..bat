@echo off
rem Compiled by the c2b Compiler from c2b v0.9.6. 
rem Module ID: 324227534
if "%alreadyStarted%"=="" set traceback_callNum=0
set alreadyStarted=true
set esc=
ver | findstr /c:"Version 10"
if errorlevel 1 goto noWin10324227534
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
goto startOfFile324227534
:noWin10324227534
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
goto startOfFile324227534
:alertJS324227534
mshta javascript:alert("%~1");close();
exit/b
:ifIn324227534
echo %~2 | findstr /c:%~1
exit /b 0
:tracing_back_324227534
if %tracing_back%==%traceback_callNum% goto end_tracing_back_324227534
set /a tracing_back=%tracing_back%+1
call echo %%traceback_module_%tracing_back%%% [module ID %%traceback_moduleID_%tracing_back%%%], line %%traceback_linenum_%tracing_back%%%, in %%traceback_function_%tracing_back%%%:
call echo %%traceback_line_%tracing_back%%%
goto tracing_back_324227534
:end_tracing_back_324227534
exit /b
:forceDelete324227534
del %*
if exist %* call :forceDelete324227534 %*
exit /b
:eventWait324227534
if not exist "%temp%\Event-%*" goto eventWait324227534 %*
exit /b
:startOfFile324227534
:: list module v0.0.1
:: $list.create <list name> <item0> <item1> ...
:: $list.set <list name> <index> <value>
:: $list.get <list name> <index>
:: $list.setSize <list name> <size>
:: $list.len <list name>
:: $list.append <list name> <value>

goto endfunction1324227534
:list.create
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:: $list.create <list name> <item0> <item1> ...
if not defined arg1 (
echo. 
color 0c
echo Exception: Error: New list must have name
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 12, in list.create:
echo raise Error: New list must have name
echo.
pause
exit
)
set list.newListName=%arg1%
set list.newListCounter=-2
for %%I IN (%*) DO (
call set /a list.newListCounter=%%list.newListCounter%%+1
call set list.%%list.newListName%%.%%list.newListCounter%%=%%~I
)
set /a list.newListCounter=%list.newListCounter%+1
set list.%list.newListName%.len=%list.newListCounter%
exit /b
:endfunction1324227534

goto endfunction2324227534
:list.set
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:: $list.set <list name> <index> <value>
if not defined arg2 (
echo. 
color 0c
echo Exception: Error: list.set expected 2-3 arguments
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 27, in list.set:
echo raise Error: list.set expected 2-3 arguments
echo.
pause
exit
)

if not defined list.%~1.len (
echo. 
color 0c
echo Exception: Error: List "%arg1%" not found
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 31, in list.set:
echo raise Error: List "%arg1%" not found
echo.
pause
exit
)

call set list.setListLength=%%list.%arg1%.len%%
if not %arg2% lss %list.setListLength%  if  %arg2% geq 0 (
echo. 
color 0c
echo Exception: Error: List assignment index out of range
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 36, in list.set:
echo raise Error: List assignment index out of range
echo.
pause
exit
)
if %arg2%  LSS  0 (
echo. 
color 0c
echo Exception: Error: List assignment index out of range
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 39, in list.set:
echo raise Error: List assignment index out of range
echo.
pause
exit
)

call set list.%arg1%.%arg2%=%arg3%
exit /b
:endfunction2324227534

goto endfunction3324227534
:list.get
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:: $list.get <list name> <index>
if not defined arg2 (
echo. 
color 0c
echo Exception: Error: list.get expected 2 arguments
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 48, in list.get:
echo raise Error: list.get expected 2 arguments
echo.
pause
exit
)

if not defined list.%~1.len (
echo. 
color 0c
echo Exception: Error: List "%arg1%" not found
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 52, in list.get:
echo raise Error: List "%arg1%" not found
echo.
pause
exit
)

call set list.getListLength=%%list.%arg1%.len%%


if not %arg2% lss %list.getListLength%  if  %arg2% geq 0 (
echo. 
color 0c
echo Exception: Error: List index out of range
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 59, in list.get:
echo raise Error: List index out of range
echo.
pause
exit
)
if %arg2%  LSS  0 (
echo. 
color 0c
echo Exception: Error: List index out of range
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 62, in list.get:
echo raise Error: List index out of range
echo.
pause
exit
)

call set list.toReturn=%%list.%arg1%.%arg2%%%
set toReturn_%returnID%_%traceback_callNum%=%list.toReturn%
exit /b
exit /b
:endfunction3324227534

goto endfunction4324227534
:list.setSize
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:: $list.setSize <list name> <size>
if not defined arg2 (
echo. 
color 0c
echo Exception: Error: list.setSize expected 2 arguments
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 72, in list.setSize:
echo raise Error: list.setSize expected 2 arguments
echo.
pause
exit
)
if not defined list.%~1.len (
echo. 
color 0c
echo Exception: Error: List "%arg1%" not found
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 75, in list.setSize:
echo raise Error: List "%arg1%" not found
echo.
pause
exit
)
set list.%arg1%.len=%arg2%
exit /b
:endfunction4324227534

goto endfunction5324227534
:list.len
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:: $list.len <list name>

if not defined list.%~1.len (
echo. 
color 0c
echo Exception: Error: List "%arg1%" not found
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 84, in list.len:
echo raise Error: List "%arg1%" not found
echo.
pause
exit
)

call set list.toReturn=%%list.%arg1%.len%%

set toReturn_%returnID%_%traceback_callNum%=%list.toReturn%
exit /b
exit /b
:endfunction5324227534

goto endfunction6324227534
:list.append
set arg1=%~1
set arg2=%~2
set arg3=%~3
set arg4=%~4
set arg5=%~5
:: $list.append <list name> <value>


if not defined list.%~1.len (
echo. 
color 0c
echo Exception: Error: List "%arg1%" not found
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_324227534
echo list [module ID 324227534], line 97, in list.append:
echo raise Error: List "%arg1%" not found
echo.
pause
exit
)

call set list.appendListLength=%%list.%arg1%.len%%
set list.%arg1%.%list.appendListLength%=%arg2%
set /a list.appendListLength=%list.appendListLength%+1
set list.%arg1%.len=%list.appendListLength%
exit /b
:endfunction6324227534


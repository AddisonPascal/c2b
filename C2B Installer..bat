@echo off
rem Compiled by the c2b Compiler from c2b v0.9.3. 
rem Module ID: 1741818942
if "%alreadyStarted%"=="" set traceback_callNum=0
set alreadyStarted=true
set esc=
ver | findstr /c:"Version 10"
if errorlevel 1 goto noWin101741818942
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
goto startOfFile1741818942
:noWin101741818942
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
goto startOfFile1741818942
:alertJS1741818942
mshta javascript:alert("%~1");close();
exit/b
:ifIn1741818942
echo %~2 | findstr /c:%~1
exit /b 0
:tracing_back_1741818942
if %tracing_back%==%traceback_callNum% goto end_tracing_back_1741818942
set /a tracing_back=%tracing_back%+1
call echo %%traceback_module_%tracing_back%%% [module ID %%traceback_moduleID_%tracing_back%%%], line %%traceback_linenum_%tracing_back%%%, in %%traceback_function_%tracing_back%%%:
call echo %%traceback_line_%tracing_back%%%
goto tracing_back_1741818942
:end_tracing_back_1741818942
exit /b
:forceDelete1741818942
del %*
if exist %* call :forceDelete1741818942 %*
exit /b
:eventWait1741818942
if not exist "%temp%\Event-%*" goto eventWait1741818942 %*
exit /b
:startOfFile1741818942
echo(Loading... 0%%%esc0m%
set version=Error
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/AddisonPascal/c2b/master/ver.bat', 'download')"
del __version__.bat >nul
ren download __version__.bat
call __version__.bat
del __version__.bat >nul
if %version%==Error (
cls
echo(Error, internet is required%esc0m%
echo. 
color 0c
echo Exception: Exception: Cannot connect to server
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_1741818942
echo C2B Installer [module ID 1741818942], line 11, in [module]:
echo raise Exception: Cannot connect to server
echo.
pause
exit
)
cls
echo %escRewrite%Loading... 16%%%esc0m%
set compilerRunning=False
set promptRunning=False
set pyRunning=False
tasklist /fi "WINDOWTITLE eq C2B Compiler v%version%" | findstr Image
if %errorlevel% NEQ 1 (
set compilerRunning=True
)
echo %escRewrite%Loading... 33%%%esc0m%
tasklist /fi "WINDOWTITLE eq c2b Prompt - Loading modules..." | findstr Image
if %errorlevel% NEQ 1 (
set promptRunning=True
)
echo %escRewrite%Loading... 50%%%esc0m%
tasklist /fi "WINDOWTITLE eq c2b Prompt" | findstr Image
if %errorlevel% NEQ 1 (
set promptRunning=True
)
echo %escRewrite%Loading... 66%%%esc0m%
tasklist /fi "WINDOWTITLE eq BAT2Py" | findstr Image
if %errorlevel% NEQ 1 (
set pyRunning=True
)
if %compilerRunning%==True (
call :alertJS1741818942 "Warning! C2B Compiler is running. Please close before running the installer"
echo. 
color 0c
echo Exception: Exception: C2B Compiler is already running!
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_1741818942
echo C2B Installer [module ID 1741818942], line 39, in [module]:
echo raise Exception: C2B Compiler is already running!
echo.
pause
exit
)
if %promptRunning%==True (
call :alertJS1741818942 "Warning! C2B Prompt is running. Please close before running the installer"
echo. 
color 0c
echo Exception: Exception: C2B Prompt is already running!
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_1741818942
echo C2B Installer [module ID 1741818942], line 43, in [module]:
echo raise Exception: C2B Prompt is already running!
echo.
pause
exit
)
if %pyRunning%==True (
call :alertJS1741818942 "Warning! BAT2Py is running. Please close before running the installer"
echo. 
color 0c
echo Exception: Exception: BAT2Py is already running!
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_1741818942
echo C2B Installer [module ID 1741818942], line 47, in [module]:
echo raise Exception: BAT2Py is already running!
echo.
pause
exit
)
set opened_file="%temp%\DesktopFolder.bat"
(
echo(set DesktopFolder=^^
)>%opened_file%
echo %escRewrite%Loading... 83%%%esc0m%
powershell [Environment]::GetFolderPath('Desktop') >>"%temp%\DesktopFolder.bat"
call "%temp%\DesktopFolder.bat"
del "%temp%\DesktopFolder.bat"
echo %escRewrite%Loading... 100%%%esc0m%
cls
echo(C2B Installer v%version%%esc0m%
echo(Installing c2b in: %esc0m%
echo(%DesktopFolder%\c2b\c2b v%version%%esc0m%
echo.
echo(Do you wish to install C2B v%version%? (y/n)%esc0m%
set choices=yn
choice /c yn >nul
set /a choiceNum=%errorlevel%-1
call set choice=%%choices:~%choiceNum%,1%%
if %choice%==n (
echo. 
color 0c
echo Exception: UserInterruption
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_1741818942
echo C2B Installer [module ID 1741818942], line 65, in [module]:
echo raise UserInterruption
echo.
pause
exit
)
if not exist "%DesktopFolder%\c2b" (
md "%DesktopFolder%\c2b"
)
if not exist "%DesktopFolder%\c2b\c2b v%version%" (
md "%DesktopFolder%\c2b\c2b v%version%"
) else (
echo(Warning, C2B v%version% is already installed!%esc0m%
echo. 
color 0c
echo Exception: Exception: C2B v%version% already installed!
echo.
echo Traceback [most recent call last]:
echo.
set tracing_back=0
call :tracing_back_1741818942
echo C2B Installer [module ID 1741818942], line 74, in [module]:
echo raise Exception: C2B v%version% already installed!
echo.
pause
exit
)
echo(Installing C2B%esc0m%
echo(0%% Complete%esc0m%
if exist download (
del download
)
echo(Downloading and Installing: %esc0m%
echo(0%% Complete%esc0m%
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/AddisonPascal/c2b/master/BAT2Py.bat', 'download')"
move download "%DesktopFolder%\c2b\c2b v%version%\BAT2Py.bat"
echo %escRewrite%1%% Complete%esc0m%
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/AddisonPascal/c2b/master/C2B%%20Compiler.bat', 'download')"
move download "%DesktopFolder%\c2b\c2b v%version%\C2B Compiler.bat"
echo %escRewrite%43%% Complete%esc0m%
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/AddisonPascal/c2b/master/DOCUMENTATION.c2b', 'download')"
move download "%DesktopFolder%\c2b\c2b v%version%\DOCUMENTATION.c2b"
echo %escRewrite%46%% Complete%esc0m%
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/AddisonPascal/c2b/master/c2b%%20Prompt.bat', 'download')"
move download "%DesktopFolder%\c2b\c2b v%version%\c2b Prompt.bat"
echo %escRewrite%99%% Complete%esc0m%
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/AddisonPascal/c2b/master/README.txt', 'download')"
move download "%DesktopFolder%\c2b\c2b v%version%\README.txt"
echo %escRewrite%100%% Complete%esc0m%
echo(Complete%esc0m%
pause>nul

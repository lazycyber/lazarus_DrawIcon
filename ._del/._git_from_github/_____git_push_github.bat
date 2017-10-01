@rem 
@echo off

cd ..

call .git_setup\.git_ini.bat 

REM делают лишь один раз
echo are you shure???
REM pause

REM git remote add origin https://github.com/lazycyber/lazarus_DrawIcon.git
%git% remote rm origin
git remote add origin https://lazycyber:RQQVL-62005-KTPMZ-55187-XGYSL@github.com/lazycyber/lazarus_DrawIcon.git

set err1=%errorlevel%
if "%err1%"=="0" (
	echo.
	%WAIT% color 0A
	echo Ok.
	echo.
	c:\out\Dropbox\bin\beep\beep.exe 200 50 /s 30 300 50 /s 30 400 50
	%WAIT% wait 6
) else (
	echo.
	%WAIT% color 0C
	echo E_R_R_O_R__! Exit code: %err1%
	echo.
	c:\out\Dropbox\bin\beep\beep.exe 200 50 /s 30 300 50 /s 30 400 50
	%WAIT% wait 120
)


pause

git push -u origin master

set err1=%errorlevel%
if "%err1%"=="0" (
	echo.
	%WAIT% color 0A
	echo Ok.
	echo.
	c:\out\Dropbox\bin\beep\beep.exe 200 50 /s 30 300 50 /s 30 400 50
	%WAIT% wait 6
) else (
	echo.
	%WAIT% color 0C
	echo E_R_R_O_R__! Exit code: %err1%
	echo.
	c:\out\Dropbox\bin\beep\beep.exe 200 50 /s 30 300 50 /s 30 400 50
	%WAIT% wait 120
)

pause

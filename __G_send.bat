@rem 
@echo off

call .git_setup\.git_ini.bat 

rem %wait% colors

echo.
%wait% color 0B
echo add all...
%wait% color 0F
%git% reset
%git% add -A

echo ===============================
%git% status
echo ===============================
%git% status --short
echo ===============================
	%git% push --all

	REM %git% fetch --all
	rem %git% pull --all
	rem %git% push --all
REM ) else (
	REM %wait% color EC
	REM echo.
	REM echo not sinhro!
REM )

REM echo.
REM %wait% color 0B
REM echo send all:
REM %wait% color 0F
REM if "%need_sinhro%"=="1" (
	REM rem %git% fetch --all
	REM rem %git% pull --all
	REM %git% push --all
REM ) else (
	REM %wait% color EC
	REM echo.
	REM echo not sinhro!
REM )

echo.
%wait% wait 30

rem +++
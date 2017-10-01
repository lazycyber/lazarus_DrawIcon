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

REM echo.
REM %wait% color 3B
REM echo commit...
REM %wait% color 0F
REM If "%TIME:~0,1%"==" " (
	REM set dt_now=%DATE:~6,10%_%DATE:~3,2%_%DATE:~0,2% 0%TIME:~1,1%:%TIME:~3,2%:%TIME:~6,5%
REM ) else (
	REM set dt_now=%DATE:~6,10%_%DATE:~3,2%_%DATE:~0,2% %TIME:~0,2%:%TIME:~3,2%:%TIME:~6,5%
REM )
REM set comment0=Изменения от %dt_now%.
REM %wait% color 02
REM echo Коментарий:
REM %wait% color 1A
REM set /p comment="%comment0% "
REM %wait% color 08
REM set comment=%comment0% %comment%
REM echo %git% commit -m "%comment%"
REM %git% commit -m "%comment%"

REM echo.
REM %wait% color 0B
REM echo get all:
REM %wait% color 0F

REM %git% pull --progress --all
REM set need_sinhro=1
if "%need_sinhro%"=="1" (
	%git% fetch --all
	%git% pull --all
	rem %git% pull --all
) else (
	%wait% color EC
	echo.
	echo not sinhro!
)

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
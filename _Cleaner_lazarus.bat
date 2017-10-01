@echo off

rmdir /Q /s lib
rmdir /Q /s backup

del /Q *.bak

del /Q *.log

del /Q *.pas~1
del /Q *.pas~2
del /Q *.pas~3

del /Q *.lfm~1
del /Q *.lfm~2
del /Q *.lfm~3

del /Q *.wrtf1~
del /Q *.wrtf2~
del /Q *.wrtf3~

del /Q *.ini1~
del /Q *.ini2~
del /Q *.ini3~

del /Q *.bat~1
del /Q *.bat~2
del /Q *.bat~3

REM ************************** ************************** **************************

rem pause
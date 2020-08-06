@echo off
echo Loading PreviousScript..
title PreviousScript v1.0
mode 80,50
cls
:start
echo.
echo PreviousScript v1.0 
set /p cmd=">>> "
if %cmd%==print goto print
if %cmd%==open goto open
if %cmd%==help goto help
if %cmd%==exit goto exit
if %cmd%==snake goto snake
if %cmd%==calc goto calc
if %cmd%==about goto about
if %cmd%==freehax goto lol  
if %cmd%==diamonds goto diamonds
if %cmd%==datboi goto datboi
if %cmd%==wi6scrpt goto gobacktowi

:error
echo Illegal Command
goto start
:exit
echo Exiting.
exit
goto start

:gobacktowi
start Wi6Scrpt.bat
exit

:datboi
START https://www.youtube.com/watch?v=pCOb6Fykxz0
goto start
:diamonds
START https://www.youtube.com/watch?v=dgha9S39Y6M
goto start
:lol
START https://www.youtube.com/watch?v=dQw4w9WgXcQ
goto start

:about
echo PreviousScript v1.0
echo Helped by Wi6Scrpt Team
echo Made by PreviousTimes and other people!
goto start

:calc
@echo off 
echo Enter a problem:
set /p problem=
if %problem% == exit exit
set /a solution=%problem%
echo %problem%=%solution%
pause >nul
goto start
:print
set /p prnt=">>> print "
echo %prnt%
goto start

:open
set /p opn=">>> open "
start %opn%
goto start

:snake
set /p snk">>> snake"
start Snake.bat
exit
goto start

:help
echo PreviousScript v1.0 
echo --Commands--
echo print
echo help
echo open
echo exit
echo snake
echo calc
echo about
echo freehax
echo diamonds
echo datboi
echo ------------
pause >nul
goto start
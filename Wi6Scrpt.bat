@echo off
echo Loading Wi6Scrpt..
title Wi6Scrpt v1.0
mode 80,50
cls
echo Wi6Scrpt v1.0 - Copyright Wi6Scrpt Team 2020.
:start
set /p cmd=">>> "
if %cmd%==print goto print
if %cmd%==open goto open
if %cmd%==help goto help
if %cmd%==exit exit
if %cmd%==clr goto clr
if %cmd%==problem goto problem
if %cmd%==update goto 
if %cmd%==mf goto makefolder
if %cmd%==md goto makedocument
if %cmd%==previousscript goto prescrpt
if %cmd%==dedit goto dedit



:error
echo Illegal Command
goto start

:makefolder
set /p folder=">>> "
md %folder%
goto start

:dedit
echo Name your document
set /p dname=">>> "
echo Write in your document (1-line only)
set /p dtext=">>> "
echo Check your Wi6Scrpt folder, the document should've been created.
echo %dtext% > %dname%.txt
goto start

:makedocument
set /p document=">>> "
echo Document created by Wi6Scrpt, You can edit it now. > %document%.txt
goto start



:update
start Updater.vbs
goto start

:problem
set /p problem=">>> "
if %problem% == exit goto start
set /a solution=%problem%
echo %problem%=%solution%
pause >nul
goto start


:print
set /p prnt=">>> print "
echo %prnt%
goto start

:prescrpt
start PreviousScript.bat
exit

:clr
cls
goto start

:open
set /p opn=">>> open "
start %opn%
goto start

:help
echo Wi6Scrpt v1.0 - Copyright Wi6Scrpt Team 2020.
echo ---------------------Commands-------------------
echo print - prints out text
echo help - shows commands
echo open - opens a file
echo update - checks for updates.
echo problem - calculates a problem (1+2)
echo dedit - Create and Edit a document (1-line only.)
echo previousscript - launches previousscript.
echo mf - Make a folder
echo md - Make an empty document and open it.
echo clr - clears the whole terminal window
echo exit - exits the terminal
echo -----------------------------------------------
goto start


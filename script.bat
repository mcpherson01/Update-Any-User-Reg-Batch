@echo off

:: ** NOTE THAT THE REG FILE NEEDS TO REFER TO THE SAME HKU\user AS BELOW **


:load
echo.
echo.
echo.


reg load HKU\GETUNIQUEUSERID "LOCTIATION OF REG.DAT"
if %errorlevel%==1 goto :leave

:import
echo.
echo.
echo.

echo Unloading hive . . .
reg unload HKU\GETUNIQUEUSERID

:leave
echo.
echo.
echo.

pause
 

@echo off
if "%1" equ "" goto error
if "%1" equ "-h" goto help
goto loadcode



:error
echo ERROR: No Executable Specified
echo try use -h
goto end

:help
echo Termux SDK v1.0 termux-loader
echo Load Android Executable to Termux with One Command 
echo.
echo.
echo Usage of termux-loader
echo termux-loader executablefile
goto end


:loadcode
echo Termux SDK v1.0
echo.
echo Please Type IP of Device Running Termux SDK Debug Kit
set /p target=: 
echo Uploading Executable on %target%
pv %1 | nc %target% 4444
echo Upload Complete
goto end

:end
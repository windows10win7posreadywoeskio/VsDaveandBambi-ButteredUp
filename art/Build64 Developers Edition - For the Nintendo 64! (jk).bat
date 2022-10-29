@echo off
color 0a
cd ..
echo Build64 - A building tools for your needs!
echo Detecting version..
echo Version 1 Developers Edition
echo Building game...
lime build windows -debug
echo.
echo Done!
pause
pwd
explorer.exe export\debug\windows\bin
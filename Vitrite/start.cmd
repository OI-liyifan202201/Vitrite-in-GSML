@echo off

if exist "./Vitrite/Vitrite-in-GSML-main/Vitrite.exe" goto skip

echo Downloading vitrite
powershell -Command "Start-BitsTransfer -Source 'https://j.1win.ggff.net/https://github.com/OI-liyifan202201/Vitrite-in-GSML/archive/refs/heads/main.zip' -Destination Vitrite.zip"

echo Done
echo Unzipping
powershell -Command "Expand-Archive -Path Vitrite.zip -DestinationPath ./Vitrite"
echo Done

:skip

start "" "./Vitrite/Vitrite-in-GSML-main/Vitrite.exe"

echo This software has been launched in the background

pause
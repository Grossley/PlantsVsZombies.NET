cd "Plants Zombies v1.0.0.0"
ren "LAWN.dll" "LAWN_old.dll"
cd ..
mkdir "Lawn_PCGL/bin/Debug/netcoreapp3.1"
xcopy "Plants Zombies v1.0.0.0" "Lawn_PCGL/bin/Debug/netcoreapp3.1/" /h /i /c /k /e /r /y
cd "Lawn_PCGL/bin/Debug/netcoreapp3.1/"
del LAWN_old.dll
cd ../../../..
echo d | xcopy "ffmpeg.exe" "Lawn_PCGL/bin/Debug/netcoreapp3.1/Content/music/" /h /i /c /k /r /y
cd "Lawn_PCGL/bin/Debug/netcoreapp3.1/Content/music"
for /f "tokens=1 delims=." %%a in ('dir /B *.wma') do ffmpeg -i "%%a.wma" "%%a.ogg"
del *.wma
ren *.ogg *.wma
del ffmpeg.exe
cd ../../../../../..
cls
echo Set up Plants Vs Zombies successfully for the DesktopGL platform.
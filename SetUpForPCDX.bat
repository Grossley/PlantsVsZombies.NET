cd "Plants Zombies v1.0.0.0"
ren "LAWN.dll" "LAWN_old.dll"
cd ..
mkdir "Lawn_PCDX/bin/Debug/netcoreapp3.1"
xcopy "Plants Zombies v1.0.0.0" "Lawn_PCDX/bin/Debug/netcoreapp3.1/" /h /i /c /k /e /r /y
cd "Lawn_PCDX/bin/Debug/netcoreapp3.1/"
del LAWN_old.dll
cd ../../../..
cls
echo Set up Plants Vs Zombies successfully for the WindowsDX platform.
@ECHO OFF
echo Kodi ADB-WIFI Installer

set /p Input=Enter device IP address: 
adb connect "%Input%"
echo Now Installing Kodi
adb install kodi-17.4-Krypton-armeabi-v7a.apk
adb push repository.aresproject-0.1.0.zip /sdcard/
adb disconnect "%Input%"

echo Press any key to exit...
pause >nul
exit





@ECHO OFF
echo Kodi ADB-WIFI Installer

set /p Input=Enter device IP address: 
adb connect "%Input%"
echo Now Installing Kodi
adb install org.xbmc.kodi_16.1.com.apk
adb disconnect "%Input%"

echo Press any key to exit...
pause >nul
exit





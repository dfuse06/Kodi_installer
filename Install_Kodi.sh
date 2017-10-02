#!/bin/sh

CL_BLU="\033[34m"
CL_RST="\033[0m"

echo -e ${CL_BLU}"                  _ _    _____           _        _ _              ${CL_BLU}";
echo -e ${CL_BLU}"    /\ /\___   __| (_)   \_   \_ __  ___| |_ __ _| | | ___ _ __    ${CL_BLU}";
echo -e ${CL_BLU}"   / //_/ _ \ / _\` | |    / /\/ '_ \/ __| __/ _\` | | |/ _ \ '__| ${CL_BLU}";
echo -e ${CL_BLU}"  / __ \ (_) | (_| | | /\/ /_ | | | \__ \ || (_| | | |  __/ |      ${CL_BLU}";
echo -e ${CL_BLU}"  \/  \/\___/ \__,_|_| \____/ |_| |_|___/\__\__,_|_|_|\___|_|      ${CL_BLU} ";
echo -e ${CL_BLU}"                                                                   ${CL_RST}";


echo -n "Enter device IP address.> "
read text
adb connect $text
sleep 5
echo "Now installing Kodi"
cd ~/scripts/Kodi_Install/
adb install kodi-17.4-Krypton-armeabi-v7a.apk
adb push plugin.video.DfuseBuild.zip /sdcard/
adb disconnect $text
echo "Done. Enjoy";





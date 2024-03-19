#!/bin/bash
wget "https://portswigger-cdn.net/burp/releases/download?product=pro&version=2024.1.1.6&type=Linux" -O "/home/kali/Downloads/burpsuite_pro_linux.sh"
cd /home/kali/Downloads/
chmod +x burpsuite_pro_linux.sh
bash burpsuite_pro_linux.sh &
sleep 5
xdotool key Return; sleep 2; xdotool key Tab Tab Tab Return; sleep 2; xdotool key Return; sleep 2; xdotool key Tab Tab Tab Return; sleep 2; xdotool key Tab Tab Tab Return; sleep 30; xdotool key Tab Return
xsel --clipboard < "/mnt/hgfs/License_files/Burp_Suite_Professional_License.txt"
bash /opt/BurpSuitePro/BurpSuitePro
#Annoyingly there is no decent way to input the license key using keyboard commands as the Java GUI for BurpSuite licensing
#does not seem to allow for keyboard interaction.
#This will need to be done manually... for now.
#!/bin/bash
sudo clear
echo "Starting Chromium Installation in 5 secs"
sleep 5s
clear
echo "Downloading Chromium..."
sleep 1s
sudo wget ./ "https://download-chromium.appspot.com/dl/Linux_x64?type=snapshots" &> /dev/null
clear
echo "Downloaded"
sleep 2s
clear
echo "Installing Up..."
sleep 1s
sudo mv "Linux_x64?type=snapshots" ./chrome-linux.zip
sudo apt install unzip --assume-yes &> /dev/null
sudo unzip ./chrome-linux.zip &> /dev/null
sudo mv ./chrome-linux ~/
cd
sudo mv ./chrome-linux ./.chrome-linuz
cd /usr/share/applications
sudo touch chr.desktop
sudo echo "[Desktop Entry]" >> chr.desktop
sudo echo "Encoding=UTF-8" >> chr.desktop
sudo echo "Version=1.0" >> chr.desktop
sudo echo "Type=Application" >> chr.desktop
sudo echo "Terminal=false" >> chr.desktop
sudo echo "Exec=~/.chrome-linux/chrome" >> chr.desktop
sudo echo "Name=Chromium" >> chr.desktop
sudo echo "Icon=~/.chrome-linux/product_logo_48.png" >> chr.desktop
clear
echo "Done"
sleep 1s
echo "Now Enjoy!"

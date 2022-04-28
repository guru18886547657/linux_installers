clear
echo "Starting VS Code Installation in 5 sec"
sleep 5s
clear
echo "Downloading..."
sudo wget ./ "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
clear
echo "Setting Up..."
sleep 1s
mv "download?build=stable&os=linux-deb-x64" ./code.deb
clear
echo "Installing..."
sudo dpkg -i ./code.deb > retouch.txt
clear
echo "Installed"
sleep 1s

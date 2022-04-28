clear
echo "Starting Discord Installation in 5s"
sleep 5s
clear
echo "Downloading discord..."
sleep 1s
sudo wget ./ "https://discord.com/api/download?platform=linux&format=deb"
echo "Downloaded discord .deb file from https://discord.com/api/download?platform=linux&format=deb" >> errors.log
clear
echo "Setting up..."
sleep 1s
sudo mv "download?platform=linux&format=deb" ./discord.deb && echo "Renamed File" >> errors.log
clear
echo "Installing..."
sudo dpkg -i ./discord.deb && echo "Attempted to install discord" >> errors.log
sudo apt install -f --assume-yes && echo "Installed Missing Dependencies" >> errors.log
sudo dpkg -i ./discord.deb && echo "Reinstalled .deb file" >> errors.log
clear
echo "Installed"
sleep 1s
clear
echo "Installed, Now Enjoy!"
sleep 1s
clear
echo "Installed, Now Enjoy! :)"
sleep 2s

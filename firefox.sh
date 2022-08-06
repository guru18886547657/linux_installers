clear
echo "Removing Snap Firefox..."
sudo snap remove firefox &> /dev/null
echo "Adding Firefox to repo..."
sudo add-apt-repository ppa:mozillateam/ppa &> /dev/null
echo "Disabling firefox snap auto installation..."
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox &> /dev/null
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox &> /dev/null
echo "Installing deb Firefox..."
sudo apt install firefox &> /dev/null
echo "Done"

#!/bin/bash
clear
echo "Connect your PC to ethernet or usb ethernet in 10 secs"
sleep 10s
sudo apt update
sudo apt install git --assume-yes
clear
echo "Setting Up Enviroment..."
sleep 1s
cd ~/
mkdir .net
cd .net
mkdir current backup
cd backup
git clone https://github.com/mcmccru/rtl8188gu
cd ..
cd current
git clone https://github.com/mcmccru/rtl8188gu
cd rtl8188gu
sudo apt install build-essential --assume-yes
make
sudo make install
clear
echo "Setted Up"
sleep 2s
clear
echo "Creating Repair File"
sleep 1s
cd
touch repair.sh
sudo rm -r ./repair.sh
echo "#!/bin/bash" >> repair.sh
echo "clear" >> repair.sh
echo "echo 'Repairing...'" >> repair.sh
echo "cd ~/.net/backup" >> repair.sh
echo "sudo rm -r ../current/rtl8188gu" >> repair.sh
echo "sudo mv ./rtl8188gu ../current" >> repair.sh
echo "cd ../current/rtl8188gu" >> repair.sh
echo "make" >> repair.sh
echo "sudo make install" >> repair.sh
echo "clear" >> repair.sh
echo "echo 'Repaired'" >> repair.sh
echo "read x" >> repair.sh
echo "Done"
sleep 1s
echo "Now Enjoy your Internet"

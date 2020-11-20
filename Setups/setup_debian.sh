#!/bin/bash

echo "------------------------------------"
echo "Welcome to my"
echo " ____  _____ ____ ___    _    _   _ "
echo "|  _ \| ____| __ )_ _|  / \  | \ | |"
echo "| | | |  _| |  _ \| |  / _ \ |  \| |"
echo "| |_| | |___| |_) | | / ___ \| |\  |"
echo "|____/|_____|____/___/_/   \_\_| \_|"
echo "                        setup script"
echo "------------------------------------"
echo "                   made by Defal7 :)"
if [ "$EUID" -ne 0 ]
then
	echo "Please run this script as super user."
	exit
fi

echo "------------------------------------"
echo "         Updating the system        "
echo "------------------------------------"
apt update

echo "------------------------------------"
echo "         Installing packages        "
echo "------------------------------------"
apt install ukuu flatpak filezilla flameshot keepassxc bleachbit htop terminator git python2

#hacking stuff

apt install proxychains

DOAS="Y"
AWN=1
echo "------------------------------------"
echo "   Would you like to install doas?  "
echo "------------------------------------"
read -p "[Y/n]" DOAS

case "$DOAS" in
 [yY] | [yY][eE][sS])
	echo "Doas will be installed in your machine."
	AWN=1	
	;;
 [nN] | [nN][oO])
	echo "Doas will NOT be installed in your machine."
	echo "See ya later!"
	exit
	;;
 *)
	echo "Doas will be installed in your machine."
	AWN=1
	;;
esac
DOASDIR=""

echo "Type the prefered directory for the doas installation"
read -p "" DOASDIR
if [ ! -d "$DOASDIR" ]
then
	echo "Not a Directory, exiting."
fi

echo "The selected directory is: $DOASDIR"
git clone https://github.com/slicer69/doas "$DOASDIR/doas"
cd "$DOASDIR/doas"
make
make install


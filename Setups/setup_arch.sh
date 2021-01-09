#!/bin/bash

echo "---------------------------"
echo "Welcome to my"
echo "    _    ____   ____ _   _ "
echo "   / \  |  _ \ / ___| | | |"
echo "  / _ \ | |_) | |   | |_| |"
echo " / ___ \|  _ <| |___|  _  |"
echo "/_/   \_\_| \_\\____|_| |_|"
echo "               setup script"
echo "---------------------------"
echo "             made by Defal7"

if [ "$EUID" -ne 0 ]
then
	echo "-------------------------------------"
	echo "Please run this script as Super User."
	echo "-------------------------------------"
	exit
fi


echo "---------------------------"
echo "    Updating the system    "
echo "---------------------------"
pacman -Syu

echo "---------------------------"
echo "    Installing Packages    "
echo "---------------------------"
pacman -S openssh filezilla samba base-devel discord flameshot lutris htop screen gimp neofetch keepassxc file-roller grub grub-customizer kdenlive obs-studio flatpak figlet libreoffice peek 

echo "----------------------------"
echo " Installing Important Stuff "
echo "----------------------------"
pacman -S atom kate file-roller virt-manager gnome-calculator gnome-disk-utility gnome-multi-writer jre8-openjdk svn bleachbit ffmpeg

echo "VIM"

source vim_plug.sh

#echo "---------------------------"
#echo "    Installing Flatpaks    "
#echo "---------------------------"
#flatpak
#flatpak install unityhub libreoffice

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


#yay
cd $HOME
git clone https://aur.archlinux.org/yay.git
#cd $HOME/yay
#makepkg -s
#sudo pacman -U *

#AUR stuff
#yay -S github-desktop-bin minecraft visual-studio-code-bin debtap auto-cpufreq rabbitvcs ttf-ms-fonts

#Debtap
#debtap -u

#auto-cpufreq
#auto-cpufreq --install

# open ssh config
systemctl enable sshd

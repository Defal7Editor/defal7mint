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
pacman -S openssh filezilla samba base-devel discord bleachbit ffmpeg flameshot lutris glances screen gimp github-cli neofetch keepassxc file-roller grub grub-customizer kdenlive obs-studio flatpak figlet

echo "---------------------------"
echo "    Installing Flatpaks    "
echo "---------------------------"
#flatpak
flatpak install unityhub libreoffice

#yay
cd $HOME
git clone https://aur.archlinux.org/yay.git
cd $HOME/yay
makepkg -s
sudo pacman -U *

#AUR stuff
yay -S github-desktop-bin minecraft visual-studio-code-bin debtap auto-cpufreq rabbitvcs ttf-ms-fonts

#Debtap
debtap -u

#auto-cpufreq
auto-cpufreq --install

# open ssh config
systemctl enable sshd

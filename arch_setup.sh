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

packages="nvim openssh samba discord flameshot lutris htop screen gimp neofetch keepassxc file-roller grub-customizer kdenlive obs-studio libreoffice peek mpv"
imp_packages="qbittorrent gnome-multi-writer ffmpeg feh grub doas"

cp ../configs/pacman.conf /etc/

echo "---------------------------"
echo "    Updating the system    "
echo "---------------------------"
pacman -Syu

echo "---------------------------"
echo "    Installing Packages    "
echo "---------------------------"
pacman -S $packages

echo "----------------------------"
echo " Installing Important Stuff "
echo "----------------------------"
pacman -S $imp_packages

echo "----------------------------"
echo "        Vim stuff           "
echo "----------------------------"
source nvim_plug.sh

echo "----------------------------"
echo "        Rice stuff          "
echo "----------------------------"
source rice.sh

echo "----------------------------"
echo "          yt-dlp            "
echo "----------------------------"
echo "yt-dlp"
 
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
chmod a+rx /usr/local/bin/yt-dlp
#curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
#chmod a+rx /usr/local/bin/youtube-dl

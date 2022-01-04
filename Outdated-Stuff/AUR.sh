#!/bin/bash

echo "---------------------------"
echo "Welcome to my" 
echo "      AUR"
echo " setup script"
echo "---------------------------"

AUR="librewolf-bin github-desktop-bin auto-cpufreq ttf-ms-fonts mint-y-icons"

PARU=1

echo "---------------------------"
echo "Do you want to install paru?"
echo "---------------------------"

read -p "[Y/n]" PARU

case "$PARU" in
 [yY] | [yY][eE][sS])
    echo "Paru will be installed in your machine."
    PARU=1
    ;;
 [nN] | [nN][oO])
    echo "Paru will not be installed in your machine."
    PARU=0
    ;;
  *)
    echo "Paru will be installed in your machine."
    PARU=1
    ;;

if [ "$PARU" -e 1]
theb
#paru
git clone https://aur.archlinux.org/paru-bin.git $HOME/Documents/paru-git
makepkg -sri
fi

#AUR stuff
paru -Syu 
paru -S $AUR

#Debtap
debtap -u

#auto-cpufreq
#auto-cpufreq --install

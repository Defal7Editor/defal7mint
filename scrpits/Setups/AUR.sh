#!/bin/bash

echo "---------------------------"
echo "Welcome to my" 
echo "      AUR"
echo " setup script"
echo "---------------------------"

AUR="dxvk-bin librewolf-bin github-desktop-bin minecraft debtap auto-cpufreq ttf-ms-fonts mint-y-icons"

#paru
git clone https://aur.archlinux.org/paru-bin.git $HOME/Documents/paru-git
makepkg -sri

#AUR stuff
paru -Syu 
paru -S $AUR

#Debtap
debtap -u

#auto-cpufreq
#auto-cpufreq --install

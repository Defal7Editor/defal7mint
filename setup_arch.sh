#!/bin/bash
sudo pacman -Syu
sudo pacman -S openssh filezilla samba base-devel steam discord wine bleachbit ffmpeg rabbitvcs-cli flameshot lutris glances screen gimp github-cli neofetch keepassxc

#yay
cd $HOME/Documents
git clone https://aur.archlinux.org/yay.git
cd $HOME/Documents/yay
makepkg -s
sudo pacman -U *

#AUR stuff
yay -S github-desktop-bin minecraft visual-studio-code-bin debtap

# open ssh config


#!/bin/bash
sudo pacman -Syu
sudo pacman -S openssh filezilla samba base-devel discord bleachbit ffmpeg flameshot lutris glances screen gimp github-cli neofetch keepassxc file-roller grub grub-customizer kdenlive obs-studio flatpak

#flatpak
sudo flatpak install unityhub libreoffice

#yay
cd $HOME
git clone https://aur.archlinux.org/yay.git
cd $HOME/yay
makepkg -s
sudo pacman -U *

#AUR stuff
yay -S github-desktop-bin minecraft visual-studio-code-bin debtap auto-cpufreq rabbitvcs ttf-ms-fonts

#Debtap
sudo debtap -u

#auto-cpufreq
sudo auto-cpufreq --install

# open ssh config
systemctl enable ssh

#!/bin/bash

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' 
sudo apt install --install-recommends winehq-stable

#if [ "$EUID" -ne 0 ]
#then
#    echo "Please run this script as super user."
#    exit
#fi

#Variables
OPTION=N
OPTION2=Y
OBS=0
PHOTOSHOP=0

echo -e "Hello, \e[3;1m$USER\e[0m! Welcome to the Insta-Default shell."
echo
echo -e "Do you want to install \e[1mOBS?\e[0m"
read -p "[y/N]" OPTION

case "$OPTION" in
 [yY] | [yY][eE][sS])
    echo "OBS will be installed in your machine."
    echo
    OBS=1    
    ;;
 [nN] | [nN][oO])
    echo -e "OBS will \e[3;1mNOT\e[0m be installed in your machine."
    echo
    OBS=0
    ;;
 *)
    echo "Please enter [y/yes] or [n/no]."
    ;;
esac

echo -e "Do you want to install \e[3;1mPhotoshop CC 2019?\e[0m"
read -p "[Y/n]" OPTION2

case "$OPTION2" in
    [yY] | [yY][eE][sS])
    echo "Photoshop CC 2019 will be installed in your machine."
    echo
    PHOTOSHOP=1    
    ;;    
    [nN] | [nN][oO])
    echo -e "Photoshop CC 2019 will \e[3;1mNOT\e[0m be installed in your machine."
    echo
    PHOTOSHOP=0
    ;;
    *)
    echo "Please enter [y/yes] or [n/no]."
    ;;
esac

#Instalation
DIRECTORY="$HOME/PhotoshopCC2019"
if [ "$OBS" == 1 ]
then
    echo "Preparing the OBS installation"
    sudo add-apt-repository ppa:obsproject/obs-studio
    sudo apt install obs-studio
fi

if [ "$PHOTOSHOP" == 1 ]
then
    echo -e "\e[34mType the prefered Destination for Photoshop.\e[0m"
    echo -e "\e[34mDefault directory: \e[0m$DIRECTORY"
    read -p "Insert new directory (Leave blank for default):" DIRECTORY
    if [ "$DIRECTORY" == "" ]
    then
        DIRECTORY="$HOME/PhotoshopCC2019"
        mkdir "$DIRECTORY"
    fi
    if [ ! -d "$DIRECTORY" ];
    then
        echo Not a valid directory.
        exit
    fi
    echo "Directory: $DIRECTORY"
    sudo git clone https://github.com/Gictorbit/photoshopCClinux.git $DIRECTORY
    cd photoshopCClinux
    chmod +x setup.sh
fi

UP=Y
echo "Do you wish to update now? Default: Yes"
read -p "[Y/n]" UP

case $UP in
    [yY] | [yY][eE][sS])
        UP=Y
        sudo apt update
        sudo apt full-upgrade
        ;;
    [nN] | [nN][oO])
        UP=N
        echo "fuck you then?"
        ;;
    *)
        echo "fuck you then?"
        ;;
esac
sudo apt install openssh-server vinagre tightvncserver joystick jstest-gtk stacer filezilla samba steam wine bleachbit openjdk-14-jdk ffmpeg git rabbitvcs-cli flameshot default-jdk playonlinux glances screen gimp keepassxc grub-customizer
sudo apt full-upgrade
sudo apt autoremove
echo -e "Update complete!"

ph=N
echo -e "Do you wish to proceed with the Photoshop installation? Default: No"
read -p "[y/N]" ph
case "$ph" in
    [yY] | [yY][eE][sS])
        cd $DIRECTORY
        ;;
    [nN] | [nN][oO])
        echo "See you later then!"
        ;;
    *)
        echo "See you later then!"
        ;;
esac


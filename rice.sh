#!/bin/sh

# This script should prepares my dwm setup with st and it's patches.
# 04/01/21
# by defal

SUDO=sudo
#SUDO=doas

BG=Wallpapers/Journey.webp

Clone() {
if [ -d RICE/$1 ]
then
	echo "[!] $1 already exists, skipping."
	echo "[!] Try running ./rice.sh clean to remove it."
else
	if [ $2 = "git" ]
	then
		git clone https://github.com/Defal7c/$1 RICE/$1
	elif [ $2 = "suckless" ]
	then
		wget https://dl.suckless.org/tools/$1
	fi
fi
}

mkdir RICE

if [[ $1 = clean ]]
then
	rm -rf RICE
    exit 0
fi

#Clone my dwm
Clone dwm git

#Clone my st
Clone st git

# Dot-Files stuff
Clone dot-files git

cp RICE/dot-files/* ~/
cp $BG ~/.bg

cd RICE/

DMENU=dmenu-5.0.tar.gz
Clone $DMENU suckless
Clone scroll git 

echo "[ Extracting dmenu ]"
echo
tar -xzvf dmenu-5.0.tar.gz

#Cleaning stuff
Echo "[ Cleaning Stuff ]"
rm dmenu-5.0.tar.gz

#dependencies
cd scroll/
$SUDO make clean install

#stuff
cd ../dmenu-5.0/
$SUDO make clean install

cd ../dwm/
$SUDO make clean install

cd ../st/
$SUDO make clean install

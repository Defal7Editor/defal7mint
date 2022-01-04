#!/bin/sh

# This script should prepares my dwm setup with st and it's patches.
# 04/01/21
# by defal

if [[ $1 = clean ]]
then
	rm -rf RICE
    exit 0
fi

if [ "$EUID" -ne 0 ]
then
    echo "---------------------------"
    echo "Please run this script as root."
    echo "---------------------------"
    exit 1
fi

git clone https://github.com/Defal7c/dwm RICE/dwm
git clone https://github.com/Defal7c/st RICE/st

cd RICE/
wget https://dl.suckless.org/tools/dmenu-5.0.tar.gz RICE/
wget https://dl.suckless.org/tools/scroll-0.1.tar.gz RICE/
tar -xzvf dmenu-5.0.tar.gz
tar -xzvf scroll-0.1.tar.gz

#cleaning stuff
rm scroll-0.1.tar.gz
rm dmenu-5.0.tar.gz


#dependencies
cd scroll-0.1/
echo "imagine echo make scroll here"

#stuff
cd ../dmenu-5.0/
echo "imagine echo make scroll here"

cd ../dwm/
echo "imagine echo make scroll here"

cd ../st/
echo "imagine echo make scroll here"
#make clean install

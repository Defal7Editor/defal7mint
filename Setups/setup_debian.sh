#!/bin/bash

echo "------------------------------------"
echo "Welcome to my"
echo " ____  _____ ____ ___    _    _   _ "
echo "|  _ \| ____| __ )_ _|  / \  | \ | |"
echo "| | | |  _| |  _ \| |  / _ \ |  \| |"
echo "| |_| | |___| |_) | | / ___ \| |\  |"
echo "|____/|_____|____/___/_/   \_\_| \_|"
echo "                        setup script"
echo "------------------------------------"
echo "                   made by Defal7 :)"
if [ "$EUID" -ne 0 ]
then
	echo "Please run this script as super user."
	exit
fi

echo "------------------------------------"
echo "         Updating the system        "
echo "------------------------------------"
apt update

echo "------------------------------------"
echo "         Installing packages        "
echo "------------------------------------"
apt install ukuu flatpak filezilla flameshot keepassxc bleachbit htop terminator

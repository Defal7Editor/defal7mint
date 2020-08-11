#!/bin/sh
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt install bzip2 openssh-server samba steam wine openjdk-14-jdk p7Zip-full ffmpeg obs-studio
sudo dpkg -s p7Zip-full | grep Status
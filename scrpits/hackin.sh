#!/bin/bash

if [ "$EUID" != 0 ]
then
	echo Please run this script as Super User.
	exit
fi

apt install wireshark

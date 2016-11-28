#!/bin/bash

init() {
	ENDC=`tput setaf 7`
	RED=`tput setaf 1`
	GREEN=`tput setaf 2`
	BLUE=`tput setaf 3`
	if [ $UID != 0 ]; then
	    echo $RED "Please run this as root" $ENDC
	    echo $BLUE "sudo $0 $*" $ENDC
	    exit 0
	fi	
}

run() {
	THEMEPATH="/boot/grub/themes"
	THEMENAME="UbuntuGrub"
	FULLPATH=$THEMEPATH'/'$THEMENAME
	if [ -d $THEMEPATH ]; then
		echo $BLUE "Continue" $ENDC
	else
		sudo mkdir $THEMEPATH
	fi
	if [ -d $FULLPATH ]; then
		sudo rm -rf $FULLPATH
	else
		sudo mkdir $FULLPATH
	fi	
	sudo cp -r . $FULLPATH
}

result() {
	THEMEINFO="theme.txt"
	if [ -s $FULLPATH'/'$THEMEINFO ]; then
		echo $GREEN "All done!" $ENDC
	else
		echo $RED "Fail, run again!" $ENDC
	fi	
}

init
run
result

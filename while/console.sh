#!/bin/bash

. ./colors
while true; do
    echo -ne "${ye}$(date +"%d.%m.%Y") > ${nc}"
    read cmd arg
#ls and optional directory
    if [[ $cmd =~ ls|dir ]]; then
	if [[ -z $arg ]]; then
	    echo -e "${gr}Listing current directory${nc}"
	    ls .
	else
	    echo -e "${gr}Listing $arg directory${nc}"
	    ls $arg
	fi
    fi
#pwd
    if [[ $cmd = "pwd" ]]; then
	echo -e "${gr}Current directory is ${pu}$(pwd)${nc}"
    fi
#hi username
    if [[ $cmd =~ hi|hello ]]; then
	echo -e "${gr}Hello ${pu}$USER${gr}. Your uid is ${pu}$UID${nc}"
    fi
#quit
    if [[ $cmd =~ exit|quit ]]; then
	echo -e "${gr}Bye ${pu}$USER${nc}"
	break
    fi	
done 

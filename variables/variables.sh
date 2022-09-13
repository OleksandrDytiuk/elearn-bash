#!/bin/bash

NAME="ol_dy"
source ./vars
mkdir ./$NAME > /dev/null 2>&1 && echo "done" || echo "mkdir failed"

sleep 3 && clear
echo -e "\e[31mListing home dir\e[0m"
ls -l --color=auto
touch ./$NAME/$FILE > /dev/null 2>&1 || echo "touch failed"

sleep 3 && clear
echo -e "\e[32mListing directory $NAME\e[0m"
ls -l ./$NAME --color=auto 2>/dev/null || echo "ls failed"
echo $NAME
echo $FILE

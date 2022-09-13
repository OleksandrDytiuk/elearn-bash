#!/bin/bash


if [[ $# -lt $# ]]; then
echo -e "\e[31mTo run this script at least 4 parameters are expected\e[0m"
exit 1
fi

sleep 1 && clear
echo -e "\e[33mWelcome to Parameters\e[0m"
sleep 3 && clear

echo -e "\e[32mThe script you are running is \e[35m$0\e[0m"
echo -e "\e[32mThe parameters you have entered are here:\e[0m"
for i in "$@"; do
echo -e "    \e[35m$i\e[0m"
done

echo -e "\e[32mThe total number of the parameters is \e[35m$#\e[0m"

echo -e "\e[32mThe parameters #2 and #4 are: \e[0m"
j=1
while [[ $j -le $# ]]; do
if [[ $j -eq 2 || $j -eq 4 ]]; then

echo -e "    \e[32m#$j    \e[35m${!j} \e[0m"
fi
((j++))
done

echo -e "\e[32mExit code of [[ \$1 -eq \$2 ]] \e[0m"
[[ $1 -eq $2 ]]
echo -e "\e[35m$?\e[0m"

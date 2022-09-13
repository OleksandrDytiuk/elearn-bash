#!/bin/bash

. ./colors

if [[ $# != 4 ]]; then
    echo -e "${re}4 parameters needed. 2 strings and 2 integers!${nc}"
    exit 1
fi

echo -e "${ye}Checking if strings are equal${nc}"
[[ $1 == $2 ]]
echo $?

echo ""
echo -e "${ye}Checking which of 2 strings are longer${nc}"
[[ ${#1} -gt ${#2} ]]
echo $?

echo ""
echo -e "${ye}Checking if TEST env variable is present and not empty${nc}"
[[ ${TEST} && ${TEST-a} ]]
echo $?

echo ""
if [[ $3 =~ [0-9]+ && $4 =~ [0-9]+ ]]; then
    echo -e "${ye}Checking if numbers are not equal${nc}"
    [[ $3 -ne $4 ]]
    echo $?
    
    echo ""
    echo -e "${ye}Checking if 3-rd integer is greater or equal to 4-th${nc}"
    [[ $3 -ge $4 ]]
    echo $?
else
    echo -e "${re}$3 or $4 is NaN${nc}"
fi

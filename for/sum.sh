#!/bin/bash

. ./colors

sum=0
error=0
num=$#
for i in $@; do
    if [[ $i =~ [0-9]+ ]]; then
	sum=$(( $sum + $i ))
    else
	echo -e "${re}Error: $i is not an integer${nc}"
	error=1
	break
    fi
done
if [[ $error -eq 1 ]]; then
    echo -e "${re}Calculation failed!${nc}"
    exit 1
else
    echo -e "${ye}The sum of arguments is ${pu}$sum${nc}"
    echo -e "${ye}The number of arguments is ${pu}$#${nc}"
    echo -e "${ye}The average of arguments is ${pu}$(echo "scale=2; $sum/$num" | bc)${nc}"
fi

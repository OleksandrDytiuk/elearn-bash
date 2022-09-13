#!/bin/bash

. ./colors

if [[ $# -eq 0 ]]; then
    echo -e "${re}positional parameters required${nc}"
    exit 1
fi

for i in "$@"; do
    if [[ $i =~ ^-?[0-9]+$ ]]; then
        echo -e "${ye}Argument ${pu}$i${ye} is OK${nc}"
    else
        echo -e "${re}Argument $i failed. Only integers are accepted${nc}"
	exit 1
    fi
done


for m in $(seq 1 $#); do
    echo -e "${ye}Argument ${pu}$m ${ye} is set to ${pu}${!m}${nc}"
    if [[ $m -eq $# ]]; then
	sum[$m]=$((${!m}+$1))
    else
	n=$((m+1))
	sum[$m]=$((${!m}+${!n}))
    fi
done

echo -e "${ye}Initial array ${pu}$@${nc}"
echo -e "${ye}Result ${pu}${sum[@]}${nc}"

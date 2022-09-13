#!/bin/bash

. ./colors

if [[ $# -ne 1 ]]; then
    echo -e "${re}1 parameter is expected${nc}"
    exit 1
fi

if [[ $1 =~ ^[0-9]+$ ]]; then
    echo -e "${gr}Considering input as an integer${nc}"
    if (( $1 % 2 == 0 )); then
        echo -e "${gr}This integer is even${nc}"
    else
        echo -e "${ye}This integer is odd${nc}"
    fi
else
    echo -e "${gr}Considering input as a string${nc}"
    if (( ${#1} % 2 == 0 )); then
        echo -e "${gr}The number of characters is even${nc}"
    else
        echo -e "${ye}The number of characters is odd${nc}"
    fi
fi

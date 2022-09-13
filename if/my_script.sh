#!/bin/bash

. ./colors

if [[ $# -ge 1 && $# -lt 2 ]]; then
    echo -e "${ye}$@${nc}"
    exit 0
elif [[ $# -gt 2 && $# -lt 4 ]]; then
    last=$#
    echo -e "${ye}${!last}${nc}"
else
    echo -e "${re}Invalid number of arguments${nc}"
fi





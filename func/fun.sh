#!/bin/bash

mult(){
    echo $(($1*$1))
}

incr(){
    local FUNCTION="$@"
    local res=$(( $($FUNCTION) + 1))
    echo $res
}

if [[ $# -ne 1 ]]; then
    echo -e "${re}One integer argument required${nc}"
    exit 1
fi

incr mult $1

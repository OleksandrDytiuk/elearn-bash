#!/bin/bash

. ./colors

if [[ -z $1 || ! -f $1 || ! -w $1 ]]; then
    echo -e "${re}No file specified or file does not exist or file is read-only${nc}"
    exit 1
fi

size=$(du --apparent-size --block-size=1KB $1 | cut -f1)
iterations=0
until [ $size -ge 1024 ]; do
    echo -e "${ye}File size before increase ${pu}$(du -b $1 | cut -f1)${nc}"
    dd if=$1 iflag=count_bytes count=$(du -b $1 | cut -f1) 2> /dev/null >> $1
    #echo "iteration=$iterations" >> $1
    echo -e "${ye}File size after increase ${pu}$(du -b $1 | cut -f1)${nc}"
    size=$(du --apparent-size --block-size=1KB $1 | cut -f1)
    (( iterations++ ))
done
echo -e "${gr}Number of iterations taken ${pu}$iterations${nc}"

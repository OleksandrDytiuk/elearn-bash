#!/bin/bash

. ./colors

read filename

if [[ -z $filename ]]; then
    echo -e "${re}Filename expected${nc}"
    exit 1
fi

cat << 'END' | tee $filename
An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset.
END
echo "Task finished" >&2

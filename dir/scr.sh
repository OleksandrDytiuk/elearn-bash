#!/bin/bash

echo "Enter dir name"
read newdir
ls -l /home/oldy/dir
mkdir -p /home/oldy/dir/$newdir && echo "dir $newdir has been created" || echo "something went wrong"
ls -l /home/oldy/dir
sleep 5
clear
echo "Creating files"
sleep 2
clear
name="ol"
sur="dy"
touch /home/oldy/dir/$newdir/$name
touch /home/oldy/dir/$newdir/$sur
ls -l /home/oldy/dir/$newdir

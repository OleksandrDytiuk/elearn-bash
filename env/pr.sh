#!/bin/bash

echo -e "\e[33mPrinting SURNAME environment variable\e[0m"

msg1=$(env|grep SURNAME|cut -d= -f1)
msg2=$(env|grep SURNAME|cut -d= -f2)

echo -e "\e[0;32mEnvironment variable \e[0;35m$msg1\e[0;32m is set to \e[0;35m$msg2\e[0m"


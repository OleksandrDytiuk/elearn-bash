#!/bin/bash

case $1 in
start)
echo "started"
echo $$ > /tmp/serv.pid
exec sleep 9999 
;;
stop)
echo "stopped"
kill $(cat /tmp/serv.pid) && rm /tmp/serv.pid
;;
restart)
echo "stopped"
kill $(cat /tmp/serv.pid) && rm /tmp/serv.pid

echo "started"
echo $$ > /tmp/serv.pid
exec sleep 9999
;;
*)
echo "usage: $(basename $0) [start|stop|restart]"
esac

#!/bin/bash

. ./colors

#functions

function start {
    #check if pid file exists and respective process is alive
    #if process is not found - remove stale pid file
if [[ -e /tmp/my_service.pid ]]; then
    pid=$(cat /tmp/my_service.pid)
    ps -ef|grep -v grep |grep -o $pid &> /dev/null && \
    echo -e "${ye}The service is already running with pid $pid${nc}" || \
    rm /tmp/my_service.pid
fi

    #if pid file is not present - run the process and put its pid to file
if [[ ! -e /tmp/my_service.pid ]]; then
    sleep 9999 &
    pgrep -P $$ > /tmp/my_service.pid && echo -e "${gr}The service is started with pid $(cat /tmp/my_service.pid)${nc}"
fi
}

function stop {
kill $(cat /tmp/my_service.pid 2> /dev/null) &> /dev/null && \
(rm /tmp/my_service.pid; echo -e "${ye}The service is stopped${nc}") || \
echo -e "${re}pid file is not found${nc}"
} 

#main
if [[ $# -ne 1 ]]; then
    echo -e "${pu}usage: $(basename $0) start|stop|restart${nc}"
    exit 0
fi

case $1 in
    start)
	start
    ;;
    stop)     
       stop
    ;;
    restart)
	stop
	start
    ;;
    *)
        echo -e "${pu}usage: $(basename $0) start|stop|restart${nc}"
	;;
esac

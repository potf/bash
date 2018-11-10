#!/bin/bash

sleepTime=1
logFile="/var/log/PS.log"

while true

do
	ps aux >> $logFile
	echo 'working'
	sleep $sleepTime
done

#!/bin/bash

sleepTimeSec=7
checkParam='^[0-9]+$'

if ! [[ $1 =~ $checkParam ]]; then
	echo -e "Exeption: Invalid parameter, expected number\n\nUse: rssControl.sh [PARAMETER]"
else
	while true
	do
		ps haxo pid,rss | awk '{if ($2 >= 5000) print $1}' | xargs kill -15
		sleep $sleepTimeSec
	done
fi

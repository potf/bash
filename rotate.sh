#!/bin/bash

confFile=`basename $1 .log` 
echo "$1 {
    missingok
    nomail
    compress
    maxsize 1M
    rotate 1
}" > /etc/logrotate.d/$confFile

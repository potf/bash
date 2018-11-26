#!/bin/bash

confFile="/etc/logrotate.d/`basename $1 .log`"

if [[ ! -f $1 ]]
    then
        echo 'err'
    else
        echo "$1 {
        missingok
        nomail
        compress
        maxsize 1M
        rotate 1
        }" > $confFile
fi

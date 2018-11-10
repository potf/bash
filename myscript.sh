#!/bin/bash

ipFile="IP.log"
macFile="MAC.log"
filesArray=(`find $1 -type f`)
ipRegEx="([0-9]{1,3}\.){3}[0-9]{1,3}"
macRegEx="([[:xdigit:]]{1,2}[:-]){5}[[:xdigit:]]{1,2}"

if [[ ! -d $1 && -z $1 ]]
then
    echo 'error'
elif [[ -d $1 && $2 = "--mac" ]]
	then
		for item in ${filesArray[*]}
	    	do
			    grep -EIo $macRegEx $item | tee $macFile
		    done
	else
		for item in ${filesArray[*]}
		    do
			    grep -EIo $ipRegEx $item | tee $ipFile
		    done
fi

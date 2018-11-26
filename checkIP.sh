#!/bin/bash

if [[ $1 =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
	ifsOriginal=$IFS
	IFS='.'
	ip=($1)
	IFS=$ifsOriginal
	echo Your ip address $1 is correct!
else 
	echo -e "Exeption: invalid ip address\n\nUse: checkIP.sh [IPADDRESS]"
fi

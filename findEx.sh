#!/bin/bash
 
arrayEx=(`find $1 -type f | grep -Eo "*\.[a-z]+$" | sort -u`)

for item in ${arrayEx[*]}
do
    echo "<$item> - <`find $1 -type f | grep -c "$item"`>"
done

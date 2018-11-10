#!/bin/bash

echo "$1 {
    missingok
    nomail
    compress
    maxsize 1M
    rotate 1
}" > deleteFile.txt

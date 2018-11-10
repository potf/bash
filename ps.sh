#!/bin/bash
  2 
  3 sleepTime=1
  4 logFile="/var/log/PS.log"
  5 
  6 while true
  7 
  8 do
  9     ps aux >> $logFile
 10     echo 'working'
 11     sleep $sleepTime
 12 done

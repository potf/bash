if [[ -f $3 && $1 =~ [0-2][0-9]:[0-9][0-9]:[0-9][0-9] && $2 =~ [0-2][0-9]:[0-9][0-9]:[0-9][0-9] ]]; then
    first=`grep -n "$1" $3 | head -1 | cut -f1 -d:`
    second=`grep -n "$2" $3 | head -1 | cut -f1 -d:`

    sed -n -e ${first},${second}p < $3
else
    echo -e "Exeption: invalid parameters\n\nUse: readLog.sh \"[TIMEFROM]\" \"[TIMETO]\" [LOGFILEPATH]\n\nExample: ./readLog.sh \"06:52:45\" \"06:56:53\" /var/log/yum.log"
fi

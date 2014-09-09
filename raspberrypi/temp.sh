#!/bin/sh
SECONDS=`date '+%s'`

NAME='temp.cpu'
TEMP=`cat /sys/class/thermal/thermal_zone0/temp`
VALUE=`echo "scale=3; ${TEMP} / 1000" | bc`
echo "${NAME}\t${VALUE}\t${SECONDS}"
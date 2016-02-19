#!/bin/bash
SECONDS=`date '+%s'`

NAME='temperature.cpu'
TEMP=`cat /sys/class/thermal/thermal_zone0/temp`
VALUE=`echo "scale=3; ${TEMP} / 1000" | bc`
echo -e "${NAME}\t${VALUE}\t${SECONDS}"

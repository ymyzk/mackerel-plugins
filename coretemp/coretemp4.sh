#!/bin/sh
SECONDS=`date '+%s'`

NAME='coretemp.cpu'
TEMP=`cat /sys/devices/platform/coretemp.0/temp1_input`
VALUE=`echo "scale=2; ${TEMP} / 1000" | bc`
echo "${NAME}\t${VALUE}\t${SECONDS}"

NAME='coretemp.core0'
TEMP=`cat /sys/devices/platform/coretemp.0/temp2_input`
VALUE=`echo "scale=2; ${TEMP} / 1000" | bc`
echo "${NAME}\t${VALUE}\t${SECONDS}"

NAME='coretemp.core1'
TEMP=`cat /sys/devices/platform/coretemp.0/temp3_input`
VALUE=`echo "scale=2; ${TEMP} / 1000" | bc`
echo "${NAME}\t${VALUE}\t${SECONDS}"

NAME='coretemp.core2'
TEMP=`cat /sys/devices/platform/coretemp.0/temp4_input`
VALUE=`echo "scale=2; ${TEMP} / 1000" | bc`
echo "${NAME}\t${VALUE}\t${SECONDS}"

NAME='coretemp.core3'
TEMP=`cat /sys/devices/platform/coretemp.0/temp5_input`
VALUE=`echo "scale=2; ${TEMP} / 1000" | bc`
echo "${NAME}\t${VALUE}\t${SECONDS}"

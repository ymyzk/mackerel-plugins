#!/bin/bash
SECONDS=`date '+%s'`

NAME='voltage.core'
VALUE=`vcgencmd measure_volts core | awk -F '[=V]' '{print $2}'`
echo -e "${NAME}\t${VALUE}\t${SECONDS}"

NAME='voltage.sdram_c'
VALUE=`vcgencmd measure_volts sdram_c | awk -F '[=V]' '{print $2}'`
echo -e "${NAME}\t${VALUE}\t${SECONDS}"

NAME='voltage.sdram_i'
VALUE=`vcgencmd measure_volts sdram_i | awk -F '[=V]' '{print $2}'`
echo -e "${NAME}\t${VALUE}\t${SECONDS}"

NAME='voltage.sdram_p'
VALUE=`vcgencmd measure_volts sdram_p | awk -F '[=V]' '{print $2}'`
echo -e "${NAME}\t${VALUE}\t${SECONDS}"

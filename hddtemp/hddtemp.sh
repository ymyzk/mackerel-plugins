#!/bin/bash
for DEVICE in "$@"; do
  SECONDS=`date '+%s'`
  NAME="hddtemp.${DEVICE}"
  VALUE=`hddtemp -n /dev/${DEVICE}`
  echo -e "${NAME}\t${VALUE}\t${SECONDS}"
done
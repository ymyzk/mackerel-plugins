#!/bin/sh
name='macos.pmset'
seconds=`date '+%s'`

pmset -g ps | grep ' -InternalBattery' | while read line; do
  battery=$(echo "$line" | awk '{print $1}' | sed 's/-InternalBattery-/ib/g')
  value=$(echo "$line" | awk '{print $3}' | sed 's/%;//')
  echo "${name}.${battery}\t${value}\t${seconds}"
done

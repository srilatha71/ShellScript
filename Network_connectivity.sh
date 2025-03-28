#!/bin/bash
SERVER="44.201.102.206"
LOGFILE="/var/log/network_connectivity.log"
TIMEOUT=5
while true
do
  if ping -c 1 -w $TIMEOUT $SERVER &> /dev/null
  then
    :
  else
  echo "$(date)- $SERVER is unreachable">> $LOGFILE
  fi
 sleep 60
done   

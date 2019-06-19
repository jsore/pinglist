#!/usr/bin/env bash

# ping some IPs
date
cat ips.txt | while read output
do
  echo -n "Pinging $output"
  #ping -c 4 "$output" > /dev/null && echo pinged || echo ping failed
  ping -c 1 "$output" &> /dev/null
  if [ $? -eq 0 ]; then
    echo " host reached"
  else
    echo " host down"
  fi
done
#done < pinglist.txt
  # if [ $? -eq 0 ]; then
  #   echo

#!/bin/bash

IFS='.'
echo "heelo" > IPs.txt
read -a firstIP <<< "$1"
read -a lastIP <<< "$2"

while [ ${firstIP[3]} -lt ${lastIP[3]} ]; do
    nslookup "${firstIP[0]}.${firstIP[1]}.${firstIP[2]}.${firstIP[3]}" >> ./IPs.txt
    (( firstIP[3] += 1 ))
done

exit 0

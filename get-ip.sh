#!/bin/bash

interface=$1

if [ -z "$interface" ]; then
    echo "Interface: error"
    exit 0;
fi

ipresponse=`/usr/sbin/ip -f inet addr show $interface 2> /dev/null | grep -Po 'inet \K[\d.]+'`

if [[ $ipresponse == *"."*"."*"."* ]]; then
    ip=$ipresponse
else
    ip="down"
fi

echo "$interface: $ip"
echo "$interface: $ip"
# echo "#112233"   # foreground color
# echo "#00ff00"   # background color
exit 0
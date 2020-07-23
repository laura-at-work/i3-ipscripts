#!/bin/bash

interface=$1

if [ -z "$interface" ]; then
    echo "Interface: error"
    exit 0;
fi

ipresponse=`/usr/sbin/ip -f inet addr show $interface 2> /dev/null | grep -Po 'inet \K[\d.]+'`

if [[ $ipresponse == *"."*"."*"."* ]]; then
    fgcolor="#daf7A6"
    ip=$ipresponse
else
    fgcolor="#ff5733"
    ip="down"
fi

echo "$interface: $ip"
echo "$interface: $ip"
echo "$fgcolor"   # foreground color
# echo "#00ff00"   # background color
exit 0
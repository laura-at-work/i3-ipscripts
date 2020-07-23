#!/bin/bash


upcolor="#93f55b"
downcolor="#ff5733"


interface=$1

if [ -z "$interface" ]; then
    echo "Interface: error"
    exit 0;
fi

ipresponse=`/usr/sbin/ip -f inet addr show $interface 2> /dev/null | grep -Po 'inet \K[\d.]+'`

if [[ $ipresponse == *"."*"."*"."* ]]; then
    fgcolor=$upcolor
    ip=$ipresponse
else
    fgcolor=$downcolor
    ip="down"
fi

echo "$interface: $ip"
echo "$interface: $ip"
echo "$fgcolor"   # foreground color
# echo "#00ff00"   # background color
exit 0
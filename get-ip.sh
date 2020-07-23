#!/bin/bash

interface=$1

ip=`/usr/sbin/ip -f inet addr show $interface | grep -Po 'inet \K[\d.]+'`

echo "$ip"

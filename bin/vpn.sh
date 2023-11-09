#!/bin/bash
name=tun0

IFACE=$(/usr/bin/ifconfig | grep $name | awk '{print $1}' | tr -d ":")

if [[ $IFACE = "$name" ]];then
  echo "%{F#1bbf3e} %{F#1bbf3e} $(/usr/bin/ifconfig $name | grep "inet " | awk '{print $2}')%{u-}"
else
  echo "%{F#e83030} %{F#ffffff} Disconected%{u-}"
fi

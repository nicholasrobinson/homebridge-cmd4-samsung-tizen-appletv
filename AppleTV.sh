#!/bin/bash

# Script for opening the AppleTV app on a Samsung Tizen device.
# Usage: bash AppleTV.sh Set <DEVICE_IP> On true

echo "triggered" >> /tmp/test
echo "\$1='$1' \$2='$2' \$3='$3' \$4='$4'" >> /tmp/test

if [ "$1" = "Get" ]; then
   # Stateless switch is always off
   echo "0"
   exit 0
fi

if [ "$1" = "Set" ]; then
   if [ "$3" = "On" ]; then
      if [ "$4" = "true" ]; then
         # Target Smasung Tizen REST API
         /usr/bin/curl -s -X POST "http://$2:8001/api/v2/applications/3201807016597"
         exit $?
      else
         # There is no turning off AppleTV
         exit 0
      fi
   fi
fi

exit -1


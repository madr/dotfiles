#!/bin/sh
while true; do
  w="$(curl -s 'http:/wttr.in/Borlänge?format=1')"
  echo "test|string|$w"
  echo ""
  sleep 900
done

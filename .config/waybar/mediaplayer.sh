#!/bin/sh

ARTIST=$(playerctl -p strawberry metadata artist)
TITLE=$(playerctl -p strawberry metadata title)
STATUS=$(playerctl -p strawberry status)

if [[ $STATUS =~  "Playing" ]]; then
  STATUS=""
  echo "$TITLE"
elif [[ $STATUS =~ "Paused" ]]; then
  STATUS=""
  echo "$STATUS $TITLE"
else
  echo " "
fi

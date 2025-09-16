#!/usr/bin/env bash

DIR="$1"

if [ "$DIR" = "up" ]; then
    brightnessctl set +5%
elif [ "$DIR" = "down" ]; then
    brightnessctl set 5%-
fi

BR=$(brightnessctl g)
MAX=$(brightnessctl m)
PERCENT=$((BR * 100 / MAX))

notify-send -h int:value:$PERCENT -h string:synchronous:brightness "Brightness $PERCENT%"


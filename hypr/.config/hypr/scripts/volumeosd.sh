#!/usr/bin/env bash

STEP=5%

case "$1" in
  up)
    wpctl set-volume @DEFAULT_SINK@ $STEP+
    ;;
  down)
    wpctl set-volume @DEFAULT_SINK@ $STEP-
    ;;
  mute)
    wpctl set-mute @DEFAULT_SINK@ toggle
    ;;
  *)
    echo "Usage: $0 {up|down|mute}"
    exit 1
    ;;
esac

VOL=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2 * 100}' | head -1 | tr -d '%')
MUTED=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $3}')

if [ "$MUTED" = "[MUTED]" ]; then
  notify-send -h string:synchronous:volume "🔇 Muted"
else
  notify-send -h int:value:"$VOL" -h string:synchronous:volume "🔊 Volume $VOL%"
fi

#!/usr/bin/env bash

# hot reload waybar
killall waybar
waybar &

swaync-client --reload-config

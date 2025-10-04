#!/usr/bin/env bash

wall_dir="$HOME/Pictures/Wallpapers"
images=("$wall_dir"/*)

random_img="${images[RANDOM % ${#images[@]}]}"

swww img "$random_img" -a


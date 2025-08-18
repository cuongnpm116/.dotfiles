#!/bin/bash

if playerctl status == "Playing"; then
    exit 0
else
    login ctl lock-session
fi

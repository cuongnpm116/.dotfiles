if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
    if command -v Hyprland >/dev/null 2>&1; then
        if uwsm check may-start; then
            exec uwsm start hyprland.desktop
        fi
    else
        echo "Hyprland not installed. Falling back to zsh."
        exec zsh
    fi
fi

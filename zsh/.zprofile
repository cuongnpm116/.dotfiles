export QT_QPA_PLATFORMTHEME=qt6ct

if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]]; then
    exec Hyprland
fi

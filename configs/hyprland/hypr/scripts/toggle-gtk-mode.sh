#!/bin/bash

# Get current color scheme
CURRENT=$(gsettings get org.gnome.desktop.interface color-scheme)

if [[ "$CURRENT" == "'prefer-dark'" ]]; then
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
    notify-send "System Theme" "Switched to Light Mode" -i weather-clear
else
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
    notify-send "System Theme" "Switched to Dark Mode" -i weather-clear-night
fi

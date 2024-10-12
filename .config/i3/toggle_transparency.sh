#!/bin/bash

# Get the active window class
window_class=$(xdotool getwindowfocus getwindowclassname)

if [ "$window_class" = "kitty" ]; then
    # Check if Neovim is running inside Kitty
    if pgrep -x "nvim" > /dev/null; then
        # If Neovim is running, set opacity to 100%
        picom-trans -c -f -i 1.0
    else
        # If Neovim is not running, set opacity to a lower value
        picom-trans -c -f -i 0.85
    fi
fi

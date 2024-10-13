#!/bin/bash

# Power options
options="Lock\nLogout\nReboot\nShutdown\nSuspend"

# Display the menu using rofi
choice=$(echo -e "$options" | rofi -dmenu -p "Power Menu")

case "$choice" in
    Lock)
        i3lock # or your preferred lock command
        ;;
    Logout)
        killall -u $USER # or your logout command
        ;;
    Reboot)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
    Suspend)
        systemctl suspend
        ;;
    *)
        exit 1
        ;;
esac

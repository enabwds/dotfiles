#!/bin/bash

# Set your maximum volume percentage (e.g., 100%)
MAX_VOLUME=100

# Get the current volume percentage
CURRENT_VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%')

# Increase volume only if it is below the max volume
if [ "$CURRENT_VOLUME" -lt "$MAX_VOLUME" ]; then
    pactl set-sink-volume @DEFAULT_SINK@ +5%
else
    pactl set-sink-volume @DEFAULT_SINK@ $MAX_VOLUME%
fi

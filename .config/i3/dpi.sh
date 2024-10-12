#!/bin/bash

# Define the device name
device_name="Logitech G102 LIGHTSYNC Gaming Mouse"

# Check if the device is connected
if xinput list | grep -q "$device_name"; then
  # If device is found, run the xinput command to set the property
  xinput set-prop "$device_name" 'libinput Accel Speed' -0.5
else
  # If the device is not found, do nothing
  exit 0
fi

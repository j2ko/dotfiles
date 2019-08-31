#!/bin/bash
export DISPLAY=":0"
export XAUTHORITY="/home/j2ko/.Xauthority"
export HOME="/home/j2ko"

#Fix for F row
echo 0 | tee /sys/module/hid_apple/parameters/fnmode

#Fix layout for newly connected keychrone device
daskb_id=`/usr/bin/xinput -list | grep "${HID_NAME}" | grep -o id=[0-9]. | grep -o [0-9]. | tail -1`
setxkbmap -device "${daskb_id}" -option 'grp:alt_shift_toggle' -layout "us,ua"

#Show notification about connection established
su j2ko -c 'notify-send "Connected ${DISPLAY_NAME}"'
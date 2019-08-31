#!/bin/bash
#TODO instead of setting layout to specific device set it for all input devices added.
export DISPLAY=":0"
export XAUTHORITY="/home/j2ko/.Xauthority"
export HOME="/home/j2ko"

daskb_id=`/usr/bin/xinput -list | grep "${HID_NAME}" | grep -o id=[0-9]. | grep -o [0-9]. | tail -1`

echo $daskb_id >> /tmp/testenv
# setxkbmap -device "${daskb_id}" -option 'grp:alt_shift_toggle' -layout "us,ua"
setxkbmap -option 'grp:alt_shift_toggle' -layout "us,ua"

echo 0 | tee /sys/module/hid_apple/parameters/fnmode
su j2ko -c 'notify-send "Connected ${HID_NAME}"'
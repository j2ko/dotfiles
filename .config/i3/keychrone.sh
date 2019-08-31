#!/bin/bash
#TODO instead of setting layout to specific device set it for all input devices added.
export DISPLAY=:0
echo 0 | tee /sys/module/hid_apple/parameters/fnmode
daskb_id=`xinput -list | grep 'Keychron K2' | grep -o id=[0-9]. | grep -o [0-9]. | tail -1`
setxkbmap -device "${daskb_id}" -option 'grp:alt_shift_toggle' -layout "us,ua"
su j2ko -c 'notify-send Keychrone K2 connected.'
#!/bin/bash
unset w h

CURRENT_OUTPUT=`python3 -c "import json; print(next(filter(lambda w: w['focused'], json.loads('$(i3-msg -t get_workspaces)')))['output'])"`
#POLYBAR_TRAY_OUTPUT=
# examine _NET_WM_DESKTOP(CARDINAL) = 1 of 


eval $(xwininfo -id $(xdotool search --name "Polybar tray window") |
  sed -n -e "s/^ \+Width: \+\([0-9]\+\).*/w=\1/p" \
         -e "s/^ \+Height: \+\([0-9]\+\).*/h=\1/p")

h=$(($h))



menu_options="\
<span foreground='#FF00FF'><b></b></span> log out
<span foreground='#00FF00'><b></b></span> reboot
<span foreground='#FF0000'><b></b></span> power off"

rofi_theme="
* {
    font: \"DejaVu Sans Mono Regular 12\";
}
element {
   padding: 2px 15px;
}
mainbox {
    children: [ listview ];
}
element selected.normal {
  background-color: #ffffff;
  text-color: #000000;
}
window {
    border-radius: 0px 0px 15px 15px;
    width: 15ch;
    location: northeast;
    anchor: northeast;
    y-offset: $h;
    x-offset: -$w;
}
listview {  
    scrollbar: false;
}
"

are_you_sure() {
    return $(zenity --title="$1" --icon-name='dialog-warning' --question --text="Are you sure you want to $1?" --width=150 --height=100)
}

selected_menu=$(echo "$menu_options" | rofi i -font "Dejavu Sans Mono 8" -me-select-entry '' -me-accept-entry 'MousePrimary' -lines 25 -hide-scrollbar -dmenu  -markup-rows -no-custom -format 'd' -i -p "Menu" -theme-str "$rofi_theme")

case $selected_menu in
1) are_you_sure "Log Out"   && i3-msg exit;;
2) are_you_sure "Reboot"    && reboot;;
3) are_you_sure "Power Off" && poweroff;;
esac
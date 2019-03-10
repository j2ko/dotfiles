#!/bin/sh
# Require Material Icons font

is_active() {
    active=`rfkill -o soft list bluetooth | awk '/\<unblocked\>/{ print "true" }/\<blocked\>/{ print "false" }'`
    
    [ $active = "true" ]
}

get_status() {    
    if is_active; then
        echo "" 
    else
        echo ""
    fi
}

disable() {
    rfkill block bluetooth
}

enable() {
    rfkill unblock bluetooth
}

toggle() {
    if is_active; then
       disable
    else 
       enable
    fi
}

case "$1" in
    --disable)
        disable
    ;;
    --enable)
        enable
    ;;
    --toggle)
        toggle
    ;;
    *)
        get_status
    ;;
esac
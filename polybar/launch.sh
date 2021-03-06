#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
echo "Bars stopped..."
# Launch bar1 and bar2
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar top&
done

# polybar bottom;
echo "Bars launched..."
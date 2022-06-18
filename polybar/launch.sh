#!/bin/sh

# terminate all polybar
killall -q polybar

# wait all polybar shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch bar with name main
polybar main -r &

echo "Bars launched"

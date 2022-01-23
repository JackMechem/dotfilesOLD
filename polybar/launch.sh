#!/bin/bash

# Terminate already runnning bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar bar1 --config=config &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bar1 --config=/home/jack/.config/polybar/config &
  done
else
  polybar --reload bar1 --config=/home/jack/.config/polybar/config &
fi

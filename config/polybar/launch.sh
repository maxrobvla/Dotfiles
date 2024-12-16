#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini on only primary monitor
MONITOR=$(xrandr --query | grep " connected primary"| cut -d" " -f1)
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

# if type "xrandr"; then
#   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#     MONITOR=$m polybar --reload bar1 &
#     MONITOR=$m polybar --reload bar2 &
#   done
# else
#   polybar --reload bar1 &
#   polybar --reload bar2 &
# fi

# load a more minimal bar on only secondary monitors
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | grep -v "primary" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bar3 &
  done
else
  polybar --reload bar3 &
fi

echo "Polybar launched..."

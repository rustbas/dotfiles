#!/bin/sh
intern=LVDS-1
extern=DVI-D-1

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    #xrandr --output "$intern" --auto --output "$extern" --auto
    xrandr --output "$intern" --primary --auto --output "$extern" --left-of "$intern" --auto
fi

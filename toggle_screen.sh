#!/bin/sh
intern=eDP-1
extern=HDMI-1-1

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    #xrandr --output "$intern" --auto --output "$extern" --auto
    xrandr --output "$intern" --primary --auto --output "$extern" --right-of "$intern" --auto
fi

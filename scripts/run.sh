#!/bin/sh

xrdb merge ~/.Xresources
xset r rate 200 50 &
#Fix resolution on virtual dev machine
xrandr --output Virtual-1 --primary --mode 2560x1440 --pos 0x0 --rotate normal &

#Initialize wallpaper with feh
feh --bg-fill ~/dwm/wallpaper/material.jpg &

while type dwm >/dev/null; do dwm && continue || break; done
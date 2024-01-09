#!/bin/sh

killall mako
wal -c 
wal -n -i $HOME/Downloads/wallpaper/
notify-send "New wallpaper applied"

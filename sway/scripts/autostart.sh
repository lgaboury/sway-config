#!/bin/sh

/usr/lib/geoclue-2.0/demos/agent &
gammastep -m wayland &
blueman-applet &
nm-applet --indicator &
dunst &
$HOME/.config/sway/scripts/inactive-windows-transparency.py &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
autotiling &

#exec_always {
#    gsettings set $gnome-schema gtk-theme 'Arc-Dark'
#    gsettings set $gnome-schema icon-theme 'Papirus'
#}

wal -c 
$HOME/.config/sway/scripts/get_bing_image.sh
wal -n -i $HOME/.config/sway/wallpapers/wallpaper.jpg

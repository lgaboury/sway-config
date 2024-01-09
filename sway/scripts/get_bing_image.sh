#!/bin/sh

DIR="$HOME/.config/sway/wallpapers/"

# Check if sway/wallpapers directory exists, if not create it.
if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
fi

# Wallpaper path
wlpath="$DIR/wallpaper.jpg"
# Lockscreen wallpaper path
lswlpath="$DIR/lockscreen_wallpaper.jpg"
output="*"
baseurl="https://www.bing.com/"

# Get URL for Bing Image Of The Day for Canada
while [ -z $wlurl ]; do
  wlurl=$(curl $baseurl"HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-CA" -s | jq '.images[].url' --raw-output)
done

# Download and save Bing Image of the Day
curl "$baseurl$wlurl" -s > $wlpath

# Blur existing wallpaper to user later as a lock screen
convert $wlpath -filter Gaussian -blur 0x8 -level 10%,90%,0.5 $lswlpath

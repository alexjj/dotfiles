#!/bin/sh

#Set fonts

xset +fp /usr/local/lib/X11/fonts/terminus/
xset fp rehash
xrdb -merge ~/.Xresources

#Wallpaper
xsetroot -solid '#77AA77'
#Status bar

#xmobar&

#Window Manager
/usr/X11R6/bin/cwm

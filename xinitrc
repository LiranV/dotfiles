#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb -merge ~/.Xresources

setxkbmap -layout "us, il" -option "grp:lalt_lshift_toggle"


#dropboxd
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

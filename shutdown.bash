#!/bin/bash

res=$(rofi -dmenu -p "esc" -bw 0 -bc "#b5e5cf" -bg "#555555" -fg "#ffffff" -hlbg "#b5e5cf" -hlfg "#ffffff" -separator-style none -location 0 -width 250 -lines 4 -hide-scrollbar -padding 20 -font "Hack 12" < /home/lenny/.config/dmenu)

if [ $res = "suspend" ]; then
	systemctl suspend
fi
if [ $res = "hibernate" ]; then
	systemctl hibernate
fi
if [ $res = "shutdown" ]; then
	systemctl poweroff
fi
if [ $res = "reboot" ]; then
	systemctl reboot
fi

exit 0

#!/bin/bash

#main
ACTION=`dialog --stdout --menu "monitors" 0 30 4 "left" "vga left-of lvds"\
 "right" "vga right-of lvds" "lvds" "only lvds" "vga" "only vga"`
if [ -n "${ACTION}" ];then
case $ACTION in
  left)
	xrandr --output VGA1 --auto --left-of LVDS1
	xrandr --output LVDS1 --auto
     ;;
  right)
        xrandr --output VGA1 --auto --right-of LVDS1
        xrandr --output LVDS1 --auto
     ;;
  lvds)
	xrandr --output VGA1 --off
	xrandr --output LVDS1 --auto
     ;;
  vga)   
  	xrandr --output LVDS1 --off
  	xrandr --output VGA1 --auto
     ;;
esac
fi

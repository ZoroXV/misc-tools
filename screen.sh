#!/bin/sh
xrandr --newmode "1920x1080_60.00"  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
xrandr --addmode Virtual-1 1920x1080_60.00
xrandr --output Virtual-1 --mode 1920x1080_60.00

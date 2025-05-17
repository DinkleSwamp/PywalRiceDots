#!/bin/sh

#        -lf/nf/cf color
#            Defines the foreground color for low, normal and critical notifications respectively.
# 
#        -lb/nb/cb color
#            Defines the background color for low, normal and critical notifications respectively.
# 
#        -lfr/nfr/cfr color
#            Defines the frame color for low, normal and critical notifications respectively.

[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"

pidof mako && killall mako

mako  --background-color  "${color0:-#ffffff}" \
      --border-color	"${color12:-#000000}" \
      --border-size	0	\
      --anchor		top-right	\
      --actions		1	\
      --text-color  "${color12:-#cccccc}"  > /dev/null 2>&1 &

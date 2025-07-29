#!/bin/bash
sed -i 's|url(".*", height)|url("'"$(tail -n1 ~/.cache/swww/eDP-1 | sed 's/%//')"'", height)|' /home/jay/.config/rofi/launchers/type-6/style-6.rasi

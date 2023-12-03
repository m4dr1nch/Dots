#!/bin/bash
binds=$(cat ~/.config/rofi/scripts/binds.conf | rofi -i -dmenu -p 'Shortcuts 📝')

if [ -n "${binds}" ]
then
  :
fi

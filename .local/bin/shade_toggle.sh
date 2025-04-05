#!/bin/zsh

TOGGLE_FILE="$HOME/.shade_toggle_flag"

if [ -f "$TOGGLE_FILE" ]; then
  rm "$TOGGLE_FILE"
  hyprshade on blue-light-filter
else
  touch "$TOGGLE_FILE"
  hyprshade off
fi

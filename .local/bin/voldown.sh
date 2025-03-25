#!/bin/zsh
pactl -- set-sink-volume 0 -10%;
mpv $HOME/.local/assets/pop.mp3

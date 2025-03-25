#!/bin/zsh
sed -i 's/light/dark/' ~/.config/foot/foot.ini
sed -i 's/light/dark/' ~/.config/fuzzel/fuzzel.ini
sed -i 's/light.css/dark.css/' ~/.config/waybar/style.css
sed -i "s/scheme=.*/\scheme="dark"/" $HOME/.local/bin/scheme_switch
pkill -USR1 zsh
pkill -USR2 waybar
pkill swaybg
swaybg -i ~/Pictures/darkbg.jpg -m fill &
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
hyprshade on blue-light-filter

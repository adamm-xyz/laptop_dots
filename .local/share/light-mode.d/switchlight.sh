#!/bin/zsh
sed -i 's/dark/light/' ~/.config/foot/foot.ini
sed -i 's/dark/light/' ~/.config/fuzzel/fuzzel.ini
sed -i 's/dark.css/light.css/' ~/.config/waybar/style.css
sed -i "s/scheme=.*/\scheme="light"/" $HOME/.local/bin/scheme_switch
pkill -USR1 zsh
pkill -USR2 waybar
pkill swaybg
swaybg -i ~/Pictures/lightbg.jpg -m fill &
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
hyprshade off

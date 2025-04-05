#!/bin/zsh
sed -i 's/dark/light/' ~/.config/foot/foot.ini
sed -i 's/dark/light/' ~/.config/rofi/config.rasi
sed -i 's/dark/light/' ~/.config/fuzzel/fuzzel.ini
sed -i 's/dark.css/light.css/' ~/.config/waybar/style.css
sed -i "s/scheme=.*/\scheme="light"/" $HOME/.local/bin/scheme_switch
#dynamically update zsh
pkill -USR1 zsh
#dynamically update waybar
pkill -USR2 waybar
#replace wallpaper
pkill swaybg
swaybg -i ~/Pictures/lightbg.jpg -m fill &
#set GTK theme preference
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
hyprshade off

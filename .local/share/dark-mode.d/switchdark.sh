#!/bin/zsh
hyprshade on blue-light-filter
sed -i 's/light/dark/' ~/.config/foot/foot.ini
sed -i 's/light/dark/' ~/.local/bin/lock.sh
sed -i 's/light/dark/' ~/.config/rofi/config.rasi
sed -i 's/light/dark/' ~/.config/fuzzel/fuzzel.ini
sed -i 's/light.css/dark.css/' ~/.config/waybar/style.css
sed -i "s/scheme=.*/\scheme="dark"/" $HOME/.local/bin/scheme_switch
#dynamically update zsh
pkill -USR1 zsh
#dynamically update waybar
pkill -USR2 waybar
#replace wallpaper
pkill swaybg
swaybg -i ~/Pictures/darkbg.jpg -m fill &
#set GTK theme preference
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
#update qutebrowser
~/.local/bin/qutebrowser-darkmode-toggle.sh dark

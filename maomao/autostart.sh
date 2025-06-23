#! /usr/bin/bash

# notifications
swaync &

# night light

# wallpaper
swaybg -i ~/.config/maomao/wallpaper/bg.png

# bar
waybar -c ~/.config/waybar/config -s ~/.config/waybar/style.css &

nm-applet &
fcitx5 &

# clipboard
wl-clip-persist --clipboard regular --reconnect-tries 0 &
wl-paste --type text --watch cliphist store &

# permissions

/usr/lib/xfce-polkit/xfce-polkit &

#!/bin/bash

# Options for powermenu
lock="Lock"
logout="Logout"
shutdown="Shutdown"
reboot="Reboot"
sleep="Sleep"

# Get answer from user via rofi
selected_option=$(echo "$lock
$logout
$shutdown
$reboot
$sleep" | rofi -dmenu\
                  -i\
                  -p "Power"\
                  -theme "tokyonight.rasi")

# Do something based on selected option
case $selected_option in
    $lock)
        i3lock
        ;;
    $logout)
        i3-msg exit
        ;;
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $sleep)
        systemctl suspend
        ;;
esac


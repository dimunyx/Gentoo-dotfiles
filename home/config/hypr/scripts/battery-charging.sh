#!/usr/bin/env bash

prev=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null)

while true; do
    curr=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null)
    if [ "$curr" = "Charging" ] && [ "$prev" != "Charging" ]; then
        notify-send --icon="/home/dimunyx/.config/hypr/icons/battery_charging.svg" "Батарея" "Батарея заряжается"
        mpv /home/dimunyx/.config/hypr/sounds/charging_battery.mp3
    fi
    prev=$curr
    sleep 1
done

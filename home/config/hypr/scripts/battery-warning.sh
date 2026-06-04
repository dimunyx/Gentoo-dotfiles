#!/bin/bash

BAT=$(ls /sys/class/power_supply | grep BAT | head -n 1)

while true; do
    capacity=$(cat /sys/class/power_supply/${BAT}/capacity)
    status=$(cat /sys/class/power_supply/${BAT}/status)

    if [ "$status" = "Discharging" ] && [ "$capacity" -le 10 ]; then
        notify-send --icon='/home/dimunyx/.config/hypr/icons/low_battery.svg' -u critical "Батарея разряжена" "Батарея имеет ${capacity}%! Подключите зарядное устройство." | mpv /home/dimunyx/.config/hypr/sounds/low_battery.mp3
    fi
    sleep 60
done


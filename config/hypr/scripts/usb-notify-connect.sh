#!/bin/bash

udevadm monitor --udev --subsystem-match=usb | while read -r line; do
    	if [[ "$line" =~ add ]] && [[ "$line" != *":1."* ]]; then
        	notify-send --icon '/home/dimunyx/.config/hypr/icons/usb.svg' "USB" "Устройство подключено"
    	fi
done

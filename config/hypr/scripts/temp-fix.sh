#!/bin/bash

FILE="$HOME/.config/waybar/modules.jsonc"

# Ищем hwmon с k10temp
for hw in /sys/class/hwmon/hwmon*; do
    if [[ -f "$hw/name" ]] && grep -q "k10temp" "$hw/name"; then
        TARGET="$hw/temp1_input"
        break
    fi
done

# Если не нашли — выходим
[[ -z "$TARGET" ]] && exit 0

# Меняем hwmon-path в конфиге
sed -i "s|\"hwmon-path\": \".*temp1_input\"|\"hwmon-path\": \"$TARGET\"|g" "$FILE"

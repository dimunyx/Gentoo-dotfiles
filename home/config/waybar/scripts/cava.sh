#!/usr/bin/env bash

bar="▁▂▃▄▅▆▇█"
dict="s/;//g"

bar_length=${#bar}

for ((i = 0; i < bar_length; i++)); do
    dict+=";s/$i/${bar:$i:1}/g"
done

config_file="/tmp/bar_cava_config"
cat >"$config_file" <<EOF
[general]
framerate = 60
bars = 16
center_align = 1

[input]
method = pipewire
source = auto

[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7

[eq]
1 = 2
2 = 1
3 = 1
4 = 1
5 = 1
EOF

pkill -f "cava -p $config_file"

cava -p "$config_file" | sed -u "$dict"

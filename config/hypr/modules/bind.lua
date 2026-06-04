-- Hyprland bind config

local mod = "SUPER"

-- Hyprland good binds
hl.bind(
	mod .. " + CTRL + SHIFT + A",
	hl.dsp.exec_cmd(
		"kitty -e nvim ~/.config/hypr"
	)
)

hl.bind(
	mod .. " + CTRL + SHIFT + W",
	hl.dsp.exec_cmd(
		"pkill waybar && waybar"
	)
)

-- Zoom management
local function zoomfunction(value)
	local zoomvalue = hl.get_config(
		"cursor:zoom_factor"
	)
	if (zoomvalue + value) > 10.0 then
		hl.config(
			{
				cursor = {
					zoom_factor = 10.0
				}
			}
		)
	elseif (zoomvalue + value) < 1.0 then
		hl.config(
			{
				cursor = {
					zoom_factor = 1.0
				}
			}
		)
	else
		hl.config(
			{
				cursor = {
					zoom_factor = zoomvalue + value
				}
			}
		)
	end
end

hl.bind(
	mod .. " + MINUS",
	function()
		zoomfunction(-0.3)
	end,
	{
		repeating = true
	}
)

hl.bind(
	mod .. " + EQUAL",
	function()
		zoomfunction(0.3)
	end,
	{
		repeating = true
	}
)

-- Cursor management
hl.bind(
	mod .. " + mouse:272",
	hl.dsp.window.drag(),
	{
		mouse = true
	}
)

hl.bind(
	mod .. " + mouse:273",
	hl.dsp.window.resize(),
	{
		mouse = true
	}
)

-- Apps
hl.bind(
	mod .. " + Q",
	hl.dsp.exec_cmd(
		"kitty"
	)
)

hl.bind(
	mod .. " + Z",
	hl.dsp.exec_cmd(
		"flatpak run app.zen_browser.zen"
	)
)

hl.bind(
	mod .. " + I",
	hl.dsp.exec_cmd(
		"nwg-look"
	)
)

hl.bind(
	mod .. " + E",
	hl.dsp.exec_cmd(
		"nautilus"
	)
)

hl.bind(
	mod .. " + M",
	hl.dsp.exec_cmd(
		"flatpak run io.github.elyprismlauncher.ElyPrismLauncher"
	)
)

hl.bind(
	mod .. " + PERIOD",
	hl.dsp.exec_cmd(
		"flatpak run it.mijorus.smile"
	)
)

-- Secondary stuff management
hl.bind(
	mod .. " + SHIFT + C",
	hl.dsp.exec_cmd(
		"hyprpicker"
	)
)

hl.bind(
	mod .. " + L",
	hl.dsp.exec_cmd(
		"hyprlock"
	)
)

hl.bind(
	mod .. " + N",
	hl.dsp.exec_cmd(
		"swaync-client -t"
	)
)

hl.bind(
	mod .. " + SPACE",
	hl.dsp.exec_cmd(
		"rofi -show drun"
	)
)

hl.bind(
	mod .. " + V",
	hl.dsp.exec_cmd(
		"cliphist list | rofi -dmenu -p ' ' | cliphist decode | wl-copy && notify-send --icon='/home/dimunyx/.config/hypr/icons/clipboard_add.svg' 'Скопировано в буфер обмена'"
	)
)

hl.bind(
	mod .. " + SHIFT + V",
	hl.dsp.exec_cmd(
		"cliphist wipe && wl-copy --clear && notify-send --icon '/home/dimunyx/.config/hypr/icons/clipboard_clear.svg' 'Буфер обмена очищен'"
	)
)

-- Window management
hl.bind(
	mod .. " + C",
	hl.dsp.window.close()
)

hl.bind(
	mod .. " + F",
	hl.dsp.window.float(
		{
			action = "toggle"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + F",
	hl.dsp.window.fullscreen(
		{
			action = "toggle"
		}
	)
)

hl.bind(
	mod .. " + J",
	hl.dsp.layout(
		"togglesplit"
	)
)

hl.bind(
	mod .. " + LEFT",
	hl.dsp.focus(
		{
			direction = "left"
		}
	)
)

hl.bind(
	mod .. " + RIGHT",
	hl.dsp.focus(
		{
			direction = "right"
		}
	)
)

hl.bind(
	mod .. " + UP",
	hl.dsp.focus(
		{
			direction = "up"
		}
	)
)

hl.bind(
	mod .. " + DOWN",
	hl.dsp.focus(
		{
			direction = "down"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + LEFT",
	hl.dsp.window.move(
		{
			direction = "left"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + RIGHT",
	hl.dsp.window.move(
		{
			direction = "right"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + UP",
	hl.dsp.window.move(
		{
			direction = "up"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + DOWN",
	hl.dsp.window.move(
		{
			direction = "down"
		}
	)
)

hl.bind(
	mod .. " + CTRL + LEFT",
	hl.dsp.window.resize(
		{
			x = -10,
			y = 0,
			relative = true
		}
	)
)

hl.bind(
	mod .. " + CTRL + RIGHT",
	hl.dsp.window.resize(
		{
			x = 10,
			y = 0,
			relative = true
		}
	)
)

hl.bind(
	mod .. " + CTRL + UP",
	hl.dsp.window.resize(
		{
			x = 0,
			y = -10,
			relative = true
		}
	)
)

hl.bind(
	mod .. " + CTRL + DOWN",
	hl.dsp.window.resize(
		{
			x = 0,
			y = 10,
			relative = true
		}
	)
)

-- Hyprland workspace management
hl.bind(
	mod .. " + 1",
	hl.dsp.focus(
		{
			workspace = "1"
		}
	)
)

hl.bind(
	mod .. " + 2",
	hl.dsp.focus(
		{
			workspace = "2"
		}
	)
)

hl.bind(
	mod .. " + 3",
	hl.dsp.focus(
		{
			workspace = "3"
		}
	)
)

hl.bind(
	mod .. " + 4",
	hl.dsp.focus(
		{
			workspace = "4"
		}
	)
)

hl.bind(
	mod .. " + 5",
	hl.dsp.focus(
		{
			workspace = "5"
		}
	)
)

hl.bind(
	mod .. " + 6",
	hl.dsp.focus(
		{
			workspace = "6"
		}
	)
)

hl.bind(
	mod .. " + 7",
	hl.dsp.focus(
		{
			workspace = "7"
		}
	)
)

hl.bind(
	mod .. " + 8",
	hl.dsp.focus(
		{
			workspace = "8"
		}
	)
)

hl.bind(
	mod .. " + 9",
	hl.dsp.focus(
		{
			workspace = "9"
		}
	)
)

hl.bind(
	mod .. " + 0",
	hl.dsp.focus(
		{
			workspace = "10"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + 1",
	hl.dsp.window.move(
		{
			workspace = "1"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + 2",
	hl.dsp.window.move(
		{
			workspace = "2"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + 3",
	hl.dsp.window.move(
		{
			workspace = "3"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + 4",
	hl.dsp.window.move(
		{
			workspace = "4"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + 5",
	hl.dsp.window.move(
		{
			workspace = "5"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + 6",
	hl.dsp.window.move(
		{
			workspace = "6"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + 7",
	hl.dsp.window.move(
		{
			workspace = "7"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + 8",
	hl.dsp.window.move(
		{
			workspace = "8"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + 9",
	hl.dsp.window.move(
		{
			workspace = "9"
		}
	)
)

hl.bind(
	mod .. " + SHIFT + 0",
	hl.dsp.window.move(
		{
			workspace = "10"
		}
	)
)

hl.bind(
	mod .. " + CTRL + 1",
	hl.dsp.window.move(
		{
			workspace = "1",
			follow = false
		}
	)
)

hl.bind(
	mod .. " + CTRL + 2",
	hl.dsp.window.move(
		{
			workspace = "2",
			follow = false
		}
	)
)

hl.bind(
	mod .. " + CTRL + 3",
	hl.dsp.window.move(
		{
			workspace = "3",
			follow = false
		}
	)
)

hl.bind(
	mod .. " + CTRL + 4",
	hl.dsp.window.move(
		{
			workspace = "4",
			follow = false
		}
	)
)

hl.bind(
	mod .. " + CTRL + 5",
	hl.dsp.window.move(
		{
			workspace = "5",
			follow = false
		}
	)
)

hl.bind(
	mod .. " + CTRL + 6",
	hl.dsp.window.move(
		{
			workspace = "6",
			follow = false
		}
	)
)

hl.bind(
	mod .. " + CTRL + 7",
	hl.dsp.window.move(
		{
			workspace = "7",
			follow = false
		}
	)
)

hl.bind(
	mod .. " + CTRL + 8",
	hl.dsp.window.move(
		{
			workspace = "8",
			follow = false
		}
	)
)

hl.bind(
	mod .. " + CTRL + 9",
	hl.dsp.window.move(
		{
			workspace = "9",
			follow = false
		}
	)
)

hl.bind(
	mod .. " + CTRL + 0",
	hl.dsp.window.move(
		{
			workspace = "10",
			follow = false
		}
	)
)

hl.bind(
	"CTRL + ALT + LEFT",
	hl.dsp.focus(
		{
			workspace = "e-1"
		}
	)
)

hl.bind(
	"CTRL + ALT + RIGHT",
	hl.dsp.focus(
	{
		workspace = "e+1"
	}
)
)


-- Fn laptop management
-- F1
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd(
		"wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
	),
	{
		locked = true,
		repeating = false
	}
)

-- F2
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd(
		"wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
	),
	{
		locked = true,
		repeating = true
	}

)


-- F3
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd(
		"wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
	),
	{
		locked = true,
		repeating = true
	}

)

-- F4
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd(
		"wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
	),
	{
		locked = true,
		repeating = false
	}

)

-- F5
hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd(
		"brightnessctl set 5%-"
	),
	{
		locked = true,
		repeating = true
	}
)

-- F6
hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd(
		"brightnessctl set 5%+"
	),
	{
		locked = true,
		repeating = true
	}
)

-- Print
hl.bind(
	"PRINT",
	hl.dsp.exec_cmd(
		"/home/dimunyx/.config/hypr/scripts/screenshot.sh | notify-send --icon '/home/dimunyx/.config/hypr/icons/screenshot.svg' 'Захват экрана' 'Экран захвачен полностю'"
	)
)

hl.bind(
	mod .. " + SHIFT + PRINT",
	hl.dsp.exec_cmd(
		"/home/dimunyx/.config/hypr/scripts/screenshot_slurp.sh && notify-send --icon '/home/dimunyx/.config/hypr/icons/screenshot_slurp.svg' 'Захват экрана' 'Экран захвачен вырезанo'"
	)
)

-- F12 (Calculator)
hl.bind(
	"XF86Calculator",
	hl.dsp.exec_cmd(
		"gnome-calculator"
	)
)

-- Playerctl
hl.bind(
	"XF86AudioNext",
	hl.dsp.exec_cmd(
		"playerctl next"
	),
	{
		locked = true 
	}
)

hl.bind(
	"XF86AudioPause",
	hl.dsp.exec_cmd(
		"playerctl play-pause"
	),
	{
		locked = true
	}
)

hl.bind(
	"XF86AudioPlay",
	hl.dsp.exec_cmd(
		"playerctl play-pause"
	),
	{
		locked = true
	}
)

hl.bind(
	"XF86AudioPrev",
	hl.dsp.exec_cmd(
		"playerctl previous"
	),
	{
		locked = true
	}
)

-- Laptop closed
hl.bind(
	"switch:Lid Switch",
		hl.dsp.exec_cmd(
			"hyprlock"
		),
		{
			locked = true
		}
)

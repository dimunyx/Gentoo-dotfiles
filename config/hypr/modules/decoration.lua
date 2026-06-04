-- Window eye-candy :)

hl.config(
	{
		decoration = {
			rounding = 16,
			rounding_power = 2,
			active_opacity = 1.0,
			inactive_opacity = 0.8,
			fullscreen_opacity = 1.0,

			blur = {
				enabled = true,
				size = 4,
				passes = 2,
				vibrancy = 0.2
			},

			shadow = {
				enabled = false
			},

			glow = {
				enabled = false
			}
		}
	}
)

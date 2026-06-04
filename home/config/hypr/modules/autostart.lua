-- Hyprland autostart

hl.on(
	"hyprland.start",
	function()
		hl.exec_cmd(
			"waybar"
		)
		hl.exec_cmd(
			"hyprpaper"
		)
		hl.exec_cmd(
			"swaync"
		)
		hl.exec_cmd(
			"gammastep"
		)
		hl.exec_cmd(
			"/home/dimunyx/.config/hypr/scripts/temp-fix.sh"
		)
		hl.exec_cmd(
			"wl-paste --type text --watch cliphist store"
		)
		hl.exec_cmd(
			"wl-paste --type image --watch cliphist store"
		)
		hl.exec_cmd(
			"/home/dimunyx/.config/hypr/scripts/battery-warning.sh"
		)
		hl.exec_cmd(
			"/home/dimunyx/.config/hypr/scripts/battery-charging.sh"
		)
		hl.exec_cmd(
			"udiskie --tray"
		)
		hl.exec_cmd(
			"blueman-applet"
		)
	end
)

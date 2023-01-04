local filesystem = require("gears.filesystem")
local config_dir = filesystem.get_configuration_dir()
local utils_dir = config_dir .. "utilities/"

return {
	--- Default Applications
	default = {
		--- Default terminal emulator
		terminal = "alacritty",
		--- Default terminal emulator + tmux
		terminal_tmux = "alacritty -e tmux",
		--- Default music client
		music_player = "wezterm start --class music ncmpcpp",
		--- Default text editor
		text_editor = "alacritty -e nvim",
		--- Default code editor
		code_editor = "code",
		--- Default web browser
		web_browser = "google-chrome-stable",
		--- Default file manager
		file_manager = "thunar",
		--- Default network manager
		network_manager = "alacritty -e nmtui",
		--- Default bluetooth manager
		bluetooth_manager = "blueman-manager",
		--- Default power manager
		power_manager = "xfce4-power-manager",
		--- Default rofi global menu
		app_launcher = "rofi -no-lazy-grab -show drun -modi drun -theme " .. config_dir .. "configuration/rofi.rasi",
	},

	--- List of binaries/shell scripts that will execute for a certain task
	utils = {
		--- Fullscreen screenshot
		full_screenshot = "flameshot gui",
		--- Area screenshot
		area_screenshot = utils_dir .. "flameshot gui",
		--- Color Picker
		color_picker = utils_dir .. "xcolor-pick",
	},
}

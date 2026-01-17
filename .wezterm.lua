-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux

-- Start of config

config.color_scheme = "Solarized (dark) (terminal.sexy)"
config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 14
config.enable_tab_bar = true
config.window_close_confirmation = "NeverPrompt"

config.keys = {
	{
		key = "Enter",
		mods = "SHIFT",
		action = wezterm.action.SendKey({ key = "Escape" }),
	},
	{
		key = "Enter",
		mods = "CMD",
		action = wezterm.action.ToggleFullScreen,
	},
}

wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:set_title("WezTerm")
end)

-- End config
return config

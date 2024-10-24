local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.default_cursor_style = "BlinkingBar"

config.color_scheme = "Catppuccin Mocha"

-- fonts
-- config.font = wezterm.font("MonacoLigaturized Nerd Font Mono")
-- config.font = wezterm.font("Monaco Nerd Font Mono")
config.font = wezterm.font_with_fallback({
	"CodeNewRoman Nerd Font",
})

config.font_size = 18.0

config.line_height = 1.1

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

-- background
config.window_background_opacity = 0.95
config.macos_window_background_blur = 50

return config

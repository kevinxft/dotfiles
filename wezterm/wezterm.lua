local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.default_cursor_style = "BlinkingBar"

config.color_scheme = "Catppuccin Mocha"

-- fonts
-- config.font = wezterm.font("MonacoLigaturized Nerd Font Mono")
-- config.font = wezterm.font("Monoco Fira Nerd")
config.font = wezterm.font_with_fallback({
	"Monaco Fira Nerd",
})

config.font_size = 16.0

config.line_height = 1.1

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

-- background
config.window_background_opacity = 0.95
config.macos_window_background_blur = 50

return config

local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Dark Ocean (terminal.sexy)'

-- fonts
config.font = wezterm.font 'MonacoLigaturized Nerd Font Mono'
config.font_size = 14.0
config.line_height = 1.2

-- background
config.window_background_opacity = 0.75
config.macos_window_background_blur = 40


return config

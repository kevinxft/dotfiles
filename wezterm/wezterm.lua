local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.default_cursor_style = 'BlinkingUnderline'

config.color_scheme = 'Dark Ocean (terminal.sexy)'
-- config.color_scheme = 'Dark Pastel'

-- fonts
config.font = wezterm.font('MonacoLigaturized Nerd Font Mono')
config.font_size = 16.0
config.line_height = 1.1

config.enable_tab_bar = false

config.window_decorations = 'RESIZE'



-- background
config.window_background_opacity = 0.8
config.macos_window_background_blur = 30


return config

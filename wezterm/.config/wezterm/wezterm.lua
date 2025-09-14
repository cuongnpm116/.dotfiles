local wezterm = require('wezterm') --[[@as Wezterm]]
local config = {}

config.enable_wayland = true

config.font = wezterm.font_with_fallback({
    'JetbrainsMono Nerd Font Mono', -- your main coding font
    'Noto Color Emoji', -- for emoji
    'Symbols Nerd Font', -- for powerline/extra glyphs
})

config.font_size = 12

config.window_close_confirmation = 'NeverPrompt'
config.window_background_opacity = 1
-- config.window_decorations = 'RESIZE'
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.color_scheme = 'Tokyo Night'

config.colors = {
    tab_bar = {
        background = 'rgba(0,0,0,0)',
        active_tab = {
            bg_color = 'transparent',
            fg_color = '#7CA5F8',
        },
        inactive_tab = {
            bg_color = 'transparent',
            fg_color = '#566082',
        },
        inactive_tab_hover = {
            bg_color = 'transparent',
            fg_color = '#566082',
            italic = true,
        },
        new_tab = {
            bg_color = 'transparent',
            fg_color = '#566082',
        },
        new_tab_hover = {
            bg_color = 'transparent',
            fg_color = '#566082',
            italic = true,
        },
    },
}

return config

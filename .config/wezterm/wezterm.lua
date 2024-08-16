-- Generated by Home Manager.
-- See https://wezfurlong.org/wezterm/

local wezterm = require 'wezterm';

return {
  font = wezterm.font_with_fallback({
    {
      family = "Iosevka",
      harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
    },
    "Symbols Nerd Font",
  }),
  font_size = 10,
  hide_tab_bar_if_only_one_tab = true,
  window_close_confirmation = "NeverPrompt",
  window_background_opacity = 0.95,
  text_background_opacity = 1.0,
  colors = {
    background = '#13140d',
    foreground = '#e4e3d7',

    cursor_fg = '#46483c',
    cursor_bg = '#c7c8b8',
    cursor_border = '#c7c8b8',

    selection_fg = '#2d331b',
    selection_bg = '#c4caa9',

    ansi = {
      '#839059',
      '#d09059',
      '#83dc59',
      '#d0dc59',
      '#8390a6',
      '#d090a6',
      '#83dca6',
      '#d0dca6',
    },
    brights = {
      '#5e6740',
      '#dd6740',
      '#5ee640',
      '#dde640',
      '#5e67bf',
      '#dd67bf',
      '#5ee6bf',
      '#dde6bf',
    },
  },
}

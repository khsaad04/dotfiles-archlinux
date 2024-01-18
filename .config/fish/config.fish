set -g fish_greeting

fish_add_path -aP ~/.config/hypr/scripts

alias vim='nvim'

if status is-interactive
    starship init fish | source
end

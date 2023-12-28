set -g fish_greeting

fish_add_path -aP ~/.local/bin

alias vim='nvim'

if status is-interactive
    starship init fish | source
end

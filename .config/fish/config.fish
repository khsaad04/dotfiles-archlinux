set -g fish_greeting

fish_add_path -aP ~/.local/bin

if status is-interactive
    starship init fish | source
end

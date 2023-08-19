set -g fish_greeting

fish_add_path -aP ~/.cargo/bin
fish_add_path -aP ~/.local/bin

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vim='nvim'
alias ls='exa'
alias la='exa -la'

if status is-interactive
    starship init fish | source
end

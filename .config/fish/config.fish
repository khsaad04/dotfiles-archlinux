status is-interactive; and begin
    # Aliases
    alias eza 'eza '\''-F'\'''
    alias l 'ls -la'
    alias la 'eza -a'
    alias ll 'eza -l'
    alias lla 'eza -la'
    alias ls eza
    alias lt 'eza --tree'
    alias t 'tmux attach || tmux new-session -s main tms'
    alias vimdiff 'nvim -d'

    # Interactive shell initialisation
    set fish_greeting
    fish_vi_key_bindings
    fish_add_path -aP ~/.cargo/bin
    starship init fish | source

    if test "$TERM" != dumb
        eval (starship init fish)
        enable_transience
    end
end

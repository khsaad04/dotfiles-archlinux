status is-interactive; and begin
    # Aliases
    alias eza 'eza '\''-s'\'' '\''Ext'\'' '\''-F'\'''
    alias l 'ls -la'
    alias la 'eza -a'
    alias ll 'eza -l'
    alias lla 'eza -la'
    alias ls eza
    alias lt 'eza --tree'
    alias vimdiff 'nvim -d'

    # Interactive shell initialisation
    set fish_greeting
    fish_vi_key_bindings
    fish_add_path -aP ~/.config/scripts

    if test "$TERM" != dumb
        eval (starship init fish)
        enable_transience
    end
end

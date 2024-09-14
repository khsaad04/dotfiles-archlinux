status is-interactive; and begin
    # Interactive shell initialisation
    set fish_greeting
    fish_vi_key_bindings
    fish_add_path -aP ~/.config/scripts

    if test "$TERM" != dumb
        eval (starship init fish)
        enable_transience
    end
end

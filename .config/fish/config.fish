status is-interactive; and begin
    set fish_greeting
    if test "$TERM" != dumb
        eval (starship init fish)
        enable_transience
    end
end

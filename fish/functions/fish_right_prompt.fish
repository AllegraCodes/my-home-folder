function fish_right_prompt
    if contains -- --final-rendering $argv
        printf '%s%s' \
            (set_color brblack) (date '+%r')
    end
end

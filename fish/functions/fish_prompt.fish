function fish_prompt --description 'custom prompt'
    #Save the return status of the previous command
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color --bold $fish_color_status)
    set -l pipestatus_string (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)
    
    echo $pipestatus_string
    printf '%s%s%s@%s%s %s%s %s%s%s\n' \
        (set_color magenta) $USER (set_color white) (set_color red) (prompt_hostname) \
        (set_color white) (prompt_pwd) \
        (set_color brblack) (fish_vcs_prompt) (set_color --reset)
    echo '>'
end

function fish_prompt
    set -e COLOR_PROMPT
    switch (random 1 5)
        case 1
        set -U COLOR_PROMPT 'red'
        case 2
        set -U COLOR_PROMPT 'blue'
        case 3
        set -U COLOR_PROMPT 'green'
        case 4
        set -U COLOR_PROMPT 'yellow'
        case 5
        set -U COLOR_PROMPT 'purple'
    end
     
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color black)(set_color -b $COLOR_PROMPT)' '(prompt_pwd)' '

    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end
    
    set_color normal
    echo -n (set_color $COLOR_PROMPT)' '
    set_color normal
end

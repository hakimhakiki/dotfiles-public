function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color black)(set_color -b white)' '(prompt_hostname)' '
    set_color normal
    echo -n (set_color -b green)(set_color white)''
    echo -n (set_color black)(set_color -b green)' '(prompt_pwd)' '

    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end
    
    set_color normal
    echo -n (set_color green)' '
    set_color normal
end

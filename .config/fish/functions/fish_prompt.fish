function fish_prompt
    set_color $fish_color purple
    echo -n (basename $PWD)
    echo -n " "
    set_color normal
end

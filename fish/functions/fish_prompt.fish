function fish_prompt
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end


if [ $USER = "yago" ]  
    set_color red
    printf 'yago'
    set_color --reset
    printf ' at '
else
    
set_color red
printf '%s' $USER
set_color --reset
printf ' at '

end
    
        set_color red
        echo -n (prompt_hostname)
        set_color --reset
        printf ' in '
    
        set_color $fish_color_cwd
        printf '%s' (prompt_pwd)
        set_color --reset

	set_color yellow
	printf '%s' (fish_vcs_prompt)
	set_color --reset

        # Line 2
        echo
        if test -n "$VIRTUAL_ENV"
                printf "<%s>::%s " (set_color yellow)(path basename $VIRTUAL_ENV)(set_color --reset) (echo)
        end
        printf 'λ '
        set_color --reset
end

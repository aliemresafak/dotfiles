. ~/.config/fish/aliases.fish

set -gx fish_greeting ''


function fish_prompt
    set last_status $status

    echo ' '

    set user (whoami)

    set_color magenta
    printf '%s' $user
    set_color normal

    # printf ' at '
    # set_color yellow
    # printf '%s' (hostname -s)
    # set_color normal

    printf ' in '
    set_color $fish_color_cwd
    printf '%s' (echo $PWD | sed -e "s|^$HOME|~|" -e 's|^/private||' -e 's|~/Projects/liveblocks/||')
    set_color normal

    git_prompt

    set_color normal
    printf ' (%s)' (date +%H:%M)
    # printf ' @ node '
    # set_color blue
    # printf '%s' (node --version | cut -d. -f1 | cut -dv -f2)
    # set_color normal
    echo

    #if test $last_status -eq 0
    #    set_color white -o
    #    printf '><((°> '
    #else
    #    set_color red -o
    #    printf '><((ˣ> '
    #    set_color white -o
    #    printf '[%d] ' $last_status
    #end

    if test $last_status -ne 0
        set_color white -o
        printf '[%d] ' $last_status
        set_color normal
    end
    printf '$ '

    set_color normal
end


function git_current_branch -d 'Prints a human-readable representation of the current branch'
    set -l ref (git symbolic-ref HEAD 2>/dev/null; or git rev-parse --short HEAD 2>/dev/null)
    if test -n "$ref"
        echo $ref | sed -e s,refs/heads/,,
        return 0
    end
end

function git_prompt
    if git rev-parse --show-toplevel >/dev/null 2>&1
        set_color normal
        printf ' on '
        set_color yellow
        printf '%s' (git_current_branch)
        set_color green
        #git_prompt_status
        set_color normal
    end
end

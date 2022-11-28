branch(){
    echo "\uE0A0"
}

input(){
    echo "%{$FG[099]%}⎇⌥⎇ ❯%{$reset_color%}"
}

user_name() {
    echo "%{$FG[099]%}%n%{$reset_color%}"
}

get_time(){
    echo "%{$FG[099]%} ⏾ %D{%I:%M:%S %p} %{$reset_color%}"
}

directory(){
    echo "%{$FG[208]%}%2~%{$reset_color%}"
}

get_status(){
    echo "%(?.%{$fg[green]%}%f.%{$fg[red]%}✘%f)"
}

git_info(){
    echo "%{$FG[208]%}$(git_prompt_info)%{$reset_color%}"
}

# git
ZSH_THEME_GIT_PROMPT_PREFIX="\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(user_name) $(directory) $(git_info)
$(input)'
RPROMPT='$(get_status) $(get_time)'
user_name() {
    echo "%{$FG[099]%} %n %{$reset_color%}"
}

get_time(){
    echo "%{$FG[099]%} %D{%I:%M:%S %p} %{$reset_color%}"
}

directory(){
    echo "%{$FG[208]%} %2~ %{$reset_color%}"
}

# git
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(user_name) $(directory) $(git_prompt_info)'
RPROMPT=' $(get_time)'
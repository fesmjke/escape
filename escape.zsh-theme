get_time(){
    echo "%D{%m/%d/%Y} | %D{%I:%M:%S %p}"
}

PROMPT=''
RPROMPT=' $(get_time)'
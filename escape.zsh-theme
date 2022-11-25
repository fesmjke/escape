get_time(){
    echo "[%D{%m/%d/%Y} $LINES | %D{%I:%M:%S %p}]"
}

input(){
    echo '%n | %0/❯'
}

PROMPT=' $(input)'
RPROMPT=' $(get_time)'
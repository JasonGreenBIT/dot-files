export HISTFILE=~/.bash_history_unlimited
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export PROMPT_COMMAND="$PROMPT_COMMAND; history -a; history -c; history -r"

shopt -s histappend

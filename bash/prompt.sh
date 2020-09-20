BOLD="\[\e[1m\]"
FG_LIGHT_CYAN="\[\e[96m\]"
FG_LIGHT_GREEN="\[\e[92m\]"
FG_LIGHT_MAGENTA="\[\e[95m\]"
FG_LIGHT_RED="\[\e[91m\]"
FG_LIGHT_YELLOW="\[\e[93m\]"
NO_COLOR="\[\e[0m\]"

function __set_ps1 {
	if [ $? -eq 0 ]; then
		PROMPT_COLOR="$FG_LIGHT_GREEN"
	else
		PROMPT_COLOR="$FG_LIGHT_RED"
	fi

	TERM_TITLE="\[\e]0;\u@\h:\w\a\]"
	PS1="$TERM_TITLE$BOLD$FG_LIGHT_CYAN$(date +"%F %T") $FG_LIGHT_MAGENTA\u@\h $FG_LIGHT_YELLOW\w\n$PROMPT_COLOR\! \$$NO_COLOR "
}

PROMPT_COMMAND="__set_ps1"

BOLD="\[\e[1m\]"
FG_BLUE="\[\e[34m\]"
FG_GREEN="\[\e[32m\]"
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

	if [ -n "$VIRTUAL_ENV" ]; then
		PS1_VENV=" ($VIRTUAL_ENV)"
	else
		PS1_VENV=""
	fi

	TERM_TITLE="\[\e]0;\u@\h:\w$PS1_VENV\a\]"
	PS1_PRE="$TERM_TITLE$BOLD$FG_LIGHT_CYAN$(date +"%F %T") $FG_LIGHT_MAGENTA\u@\h $FG_LIGHT_YELLOW\w$NO_COLOR"
	PS1_POST="$FG_BLUE$PS1_VENV\n$BOLD$PROMPT_COLOR\! \$$NO_COLOR "
	PS1="$PS1_PRE$PS1_POST"
}

if [ -f ~/src/dot-files/git/prompt.sh ]; then
	source ~/src/dot-files/git/prompt.sh
	GIT_PS1_SHOWCOLORHINTS=true
	GIT_PS1_SHOWDIRTYSTATE=true
	GIT_PS1_SHOWSTASHSTATE=true
	GIT_PS1_SHOWUNTRACKEDFILES=true
	GIT_PS1_SHOWUPSTREAM="auto"

	PS1_GIT=" $FG_GREEN($NO_COLOR%s$FG_GREEN)$NO_COLOR"
	PROMPT_COMMAND='__set_ps1 && __git_ps1 "$PS1_PRE" "$PS1_POST" "$PS1_GIT"'
else
	PROMPT_COMMAND="__set_ps1"
fi

export VIRTUAL_ENV_DISABLE_PROMPT=1

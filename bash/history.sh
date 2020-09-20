# Add Date and Time to Bash History
export HISTTIMEFORMAT="[%F %T] "

# Increase Bash History Size (Unlimited)
export HISTSIZE=
export HISTFILESIZE=

# Ignore/Erase Duplicates
export HISTCONTROL=ignoreboth:erasedups

# Change the history file location
export HISTFILE=~/.bash_history_unlimited

# Store Bash History Immediately
PROMPT_COMMAND="$PROMPT_COMMAND; history -a"

# Append Bash Commands to History File
shopt -s histappend

# Use One Command Per Line
shopt -s cmdhist

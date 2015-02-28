# Aliases
alias tmux="tmux -2"
alias grep='grep --color=auto'
alias ls='ls --color=auto'


# Adding things to my path
export PATH=.:$PATH


# System settings
export TERM='xterm-color'


# Load custom functions
source ~/.bash_functions


# Stuff to make the prompt more pleasing
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;36m\]"
NO_COLOR="\[\033[0m\]"


export PS1="$GREEN\u@\h$BLUE:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

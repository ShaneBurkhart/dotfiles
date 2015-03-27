# Aliases
alias tmux="tmux -2"
alias grep='grep --color=auto'
alias ls='ls --color=auto'


# Adding things to my path
export PATH=.:$PATH
export PATH=${GEM_HOME}/bin:$PATH


# System settings
export TERM='xterm-color'


# Load custom functions
source ~/.bash_functions


# Load git autocomplete script
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi


# Stuff to make the prompt more pleasing
RED="\[\033[0;31m\]"
RED_BOLD="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
GREEN_BOLD="\[\033[1;32m\]"
YELLOW="\[\033[0;33m\]"
YELLOW_BOLD="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
BLUE_BOLD="\[\033[1;34m\]"
MAGENTA="\[\033[0;35m\]"
MAGENTA_BOLD="\[\033[1;35m\]"
CYAN_BOLD="\[\033[1;36m\]"
NO_COLOR="\[\033[0m\]"


export PS1="$MAGENTA_BOLD\u@\h$CYAN_BOLD:\w$YELLOW_BOLD\$(parse_git_branch)$NO_COLOR\$ "

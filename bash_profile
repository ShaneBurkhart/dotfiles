alias ls='ls -G --color'
alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'
alias pgrep='ps aux | grep'

export PATH=/usr/bin/arduino-1.0.5:$PATH

export PATH=~/android-sdk-linux/tools:$PATH
export PATH=~/android-sdk-linux/platform-tools:$PATH
export JAVA_HOME=/usr/lib/jvm/java-7-oracle

export PATH=/usr/bin/go/bin:$PATH
export GOROOT=/usr/bin/go
export GOPATH=~/Desktop/Go
export PATH=~/Desktop/Go/bin:$PATH

source ~/.bashrc

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;36m\]"
NO_COLOR="\[\033[0m\]"
 
PS1="$GREEN\u@\h$BLUE:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

# ========= Custom functions ===========

function desk(){
  cd ~/Desktop
}

function compose(){
  rails new $1 -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb
}

source ~/.bashrc

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



# ========= Custom functions ===========

function desk(){
  cd ~/Desktop
}

function compose(){
  rails new $1 -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb
}

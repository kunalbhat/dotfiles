# Path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

# Plugin source
plugins=(git)

source $ZSH/oh-my-zsh.sh

# grunt
export PATH=/usr/local/share/npm/bin:$PATH

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH

# foreman
alias fs="foreman start"

# terminal
alias x="exit"
alias es="exec $SHELL"
alias c="clear"

# git
alias gf="git fetch"

# vim key bindings
set -o vi

# history search bindings
bindkey -M vicmd '?' history-incremental-search-backward
bindkey '^p' history-substring-search-up
bindkey '^n' history-substring-search-down

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Source env and npm server
alias npmenv="source .env && npm start"

# Open iOS simulator
alias simulator="open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app"

# vagrant
alias vgo="vagrant up && vagrant ssh"

# postgres
PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH:$PATH"

# brew ops
alias brewup="brew update && brew upgrade && brew cleanup"

# grab paypal real-time quote
pypl() {
  curl -s http://finance.yahoo.com/q\?s\=PYPL | grep time_rtq_ticker | sed -n 's/.*_pypl">\([0-9][0-9].[0-9][0-9]\)<\/.*$/\1/p'
}

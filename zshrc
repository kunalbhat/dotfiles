# Path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

# Plugin source
plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.zshenv

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH

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

# postgres
PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH:$PATH"

# brew ops
alias brewup="brew update && brew upgrade && brew cleanup"

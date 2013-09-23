# Path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

# Plugin source
plugins=(git)

source $ZSH/oh-my-zsh.sh

# grunt
export PATH=/usr/local/share/npm/bin:$PATH

# foreman
alias fs="foreman start"

# terminal
alias x="exit"
alias es="exec $SHELL"
alias c="clear"

# git
alias gasp="git aa && git stash && git fetch && git rebase origin/master && git stash pop"
alias gf="git fetch"

# vim key bindings
set -o vi

# bundler
alias be="bundle exec"

# history search bindings
bindkey -M vicmd '?' history-incremental-search-backward
bindkey '^p' history-substring-search-up
bindkey '^n' history-substring-search-down


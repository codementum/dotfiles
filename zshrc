# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/zsh/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="knuth"

# aliases
alias c="clear"
alias vimconfig="vim ~/dotfiles/vimrc"
alias zshconfig="vim ~/dotfiles/zshrc"
alias pws="python -m SimpleHTTPServer"
alias tdl="vim ~/tdl.md"

alias his="history | grep"

alias sag="sudo apt-get"

# git aliases
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gsa='git status -sb' # upgrade your git if -sb breaks for you. it's fun.

# make aliases
alias m='make'
alias mc='make clean'

# tmux aliases
alias tn='tmux new -s' 
alias tls='tmux ls' 
alias ta='tmux attach -t' 
alias tk='tmux kill-session -t' 

# R alias
alias rrun='R CMD BATCH' 

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew github node npm perl python redis-cli)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/texbin:/Library/Python/2.7/site-packages:/usr/local/Cellar/ruby/1.9.3-p327/bin
export PYTHONPATH=/Library/Python/2.7/site-packages/
 

export EDITOR="vim"
bindkey -v 

# no cd needed
setopt AUTO_CD

alias tmux="TERM=screen-256color-bce tmux"

# Add RVM to PATH for scripting
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#
#PATH=$PATH:$HOME/.rvm/bin 
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# JAVA Home set
#export JAVA_HOME="$(/usr/libexec/java_home)"

# nvm node version manager
#. ~/.nvm/nvm.sh

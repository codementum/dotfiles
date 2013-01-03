# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/zsh/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="school"
#ZSH_THEME="knuth"

OS=$(uname -s)
echo "$OS"
#if [ "$OS" == 'Linux' ]; then
#  echo "Linux"
#else 
#  echo "Not Linux"
#fi


# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias c="clear"
alias vimconfig="vim ~/dotfiles/vimrc"
alias zshconfig="vim ~/dotfiles/zshrc"
alias pws="python -m SimpleHTTPServer"

# git aliases
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gsa='git status -sb' # upgrade your git if -sb breaks for you. it's fun.

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew github node npm perl python redis-cli vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# ornl path
#export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/cuda/bin:/Users/l9h/Dropbox/personal/perl:/Users/l9h/Dropbox/personal/get-shit-done/:/Users/l9h/Dropbox/personal/bash/scripts

# knuth path
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/texbin:/Library/Python/2.7/site-packages

export EDITOR="vim"
bindkey -v 

# no cd needed
setopt AUTO_CD

# tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

alias tmux="TERM=screen-256color-bce tmux"

export PYTHONPATH=$PYTHONPATH:/Library/Python/2.7/site-packages/


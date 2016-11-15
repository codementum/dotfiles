# Path to your oh-my-zsh configuration.
  ZSH=$HOME/dotfiles/zsh/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
  ZSH_THEME="knuth"
  export EDITOR="vim"
  bindkey -v 


  export IEEEVIS_AWS_USER="laneharrison"

# aliases
  # general
  alias c="clear"
  alias pws="python -m SimpleHTTPServer"
  alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'

  # Extracts files with out remembering the godawful commands.
  extract () {
      if [ -f $1 ] ; then
          case $1 in
              *.tar.bz2)   tar xvjf $1        ;;
              *.tar.gz)    tar xvzf $1     ;;
              *.bz2)       bunzip2 $1       ;;
              *.rar)       unrar x $1     ;;
              *.gz)        gunzip $1     ;;
              *.tar)       tar xvf $1        ;;
              *.tbz2)      tar xvjf $1      ;;
              *.tgz)       tar xvzf $1       ;;
              *.zip)       unzip $1     ;;
              *.Z)         uncompress $1  ;;
              *.7z)        7z x $1    ;;
              *)           echo "'$1' cannot be extracted via >extract<" ;;
          esac
      else
          echo "'$1' is not a valid file"
      fi
  }

  alias tdl="vim ~/tdl.md"
  alias t="vim ~/tdl.md"
  alias clip="xclip -sel clip -i"
  if [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias o="xdg-open"
    alias otdl="xdg-open ~/tdl.md"
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    alias o="open"
    alias otdl="open ~/tdl.md"
  fi
  alias pwc='function _pwc(){ pdftotext $1 - | wc -w; };_pwc'


  # document templates
  alias nsf="cp -r ~/inactive/template-nsf ./"
  alias expense="cp -r ~/inactive/template-expense-report ./"
  alias tvcg="cp -r ~/inactive/template-tvcg ./"
  alias chi="cp -r ~/inactive/template-chi ./"
  alias pro="cp -r ~/inactive/template-prospectus ./"
  alias irb="cp -r ~/inactive/template-irb ./"
  alias letter="cp -r ~/inactive/template-letter ./"
  alias article="cp -r ~/inactive/template-article ./"


  alias citations="cat ~/dev/cv/papers.bib ~/dev/cv/journals.bib ~/dev/cv/misc.bib"
  
  # git aliases
  alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
  alias gd='git diff'
  alias gdh='git diff HEAD~1'
  alias gdc='git diff HEAD'
  alias gc='git commit'
  alias gca='git commit -a'
  alias gco='git checkout'
  alias gb='git branch'
  alias gsa='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
  alias ggh="git checkout gh-pages && git merge master && git push origin gh-pages && git checkout -"

  git config --global alias.slog "log --oneline --topo-order --graph"

  # git writing aliases
  alias gitwa='git diff --word-diff=porcelain origin/master | grep -e "^+[^+]" | wc -w | xargs'
  alias gitwd='git diff --word-diff=porcelain origin/master | grep -e "^-[^-]" | wc -w | xargs'
  alias gitw='echo $(($(gitwa) - $(gitwd)))'
  
  # make aliases
  alias m='make'
  alias mc='make clean'
  
  # tmux aliases
  alias tmux="TERM=screen-256color-bce tmux"
  alias tn='tmux new -s' 
  alias tls='tmux ls' 
  alias tsl='tmux ls' 
  alias ta='tmux attach -t' 
  alias tk='tmux kill-session -t' 
  alias tt='tmux attach -t tdl' 
  
  # R alias
  alias rrun='R CMD BATCH' 

### ZSH
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
  plugins=(git brew github node npm perl python redis-cli)

  source $ZSH/oh-my-zsh.sh

# Customize to your needs...
  export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/texbin:/Library/Python/2.7/site-packages:/usr/local/Cellar/ruby/1.9.3-p327/bin
  export PATH=$PATH:$HOME/local/bin
  export PYTHONPATH=/Library/Python/2.7/site-packages/
 
# no cd needed
  setopt AUTO_CD

# Add RVM to PATH for scripting
#PATH=$PATH:$HOME/.rvm/bin 
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
  
  PATH=$PATH:$HOME/.rvm/bin 
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

  export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

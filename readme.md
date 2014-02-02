dotfiles
========

My dotfiles and plugins for vim, zsh, and tmux.

install
-------

    cd ~ && git clone git@github.com:codementum/dotfiles.git && ./dotfiles/install.sh

adding plugins
-------

See [http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/).

In general, use the following command:

    git submodule add http://github.com/tpope/vim-fugitive.git vim/bundle/vim-fugitive

ubuntu software
------

This is just a list I generated during a recent re-install.

apt-get install: 
- zsh
- tmux
- vim
- git
- pandoc
- texlive
- build-essential
- gnome-gmail

F.lux:

    sudo add-apt-repository ppa:kilian/f.lux
    sudo apt-get update
    sudo apt-get install fluxgui

TODO check if apt-get available:
- inkscape
- dropbox
- skype
- node

npm install -g:
- grunt-cli
- bower
- yo
- gh

other scripts:
- clone/install dotfiles
- chsh zsh
- ln active
- ln inactive
- ln tdl.md

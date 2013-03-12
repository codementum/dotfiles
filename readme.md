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

    git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive

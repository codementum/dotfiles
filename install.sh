# remove old, link new
cd ~
rm .vimrc .zshrc .tmux.conf
ln -s dotfiles/vimrc .vimrc 
ln -s dotfiles/zshrc .zshrc 
ln -s dotfiles/tmux.conf .tmux.conf 

# install submodules
cd dotfiles
git submodule init
git submodule update

# copy zsh theme to oh-my-zsh
cd zsh/oh-my-zsh/themes
ln -s ../../themes/knuth.zsh-theme knuth.zsh-theme

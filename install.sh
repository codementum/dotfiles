<<<<<<< HEAD
ln -s vimrc ~/.vimrc 
ln -s zshrc ~/.zshrc 
ln -s tmux.conf ~/.tmux.conf 

# git setup
git config --global user.name "Lane Harrison" 
git config --global user.email lanetharrison@gmail.com
=======
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
>>>>>>> 5a21df03f353cd511ab8c17a1ab7fc2d71a55f02

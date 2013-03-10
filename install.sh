cd ~

rm .vimrc .zshrc .tmux.conf

ln -s dotfiles/vimrc .vimrc 
ln -s dotfiles/zshrc .zshrc 
ln -s dotfiles/tmux.conf .tmux.conf 

cd dotfiles

git submodule init
git submodule update

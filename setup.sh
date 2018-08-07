# This script sets up the sym links

ln -fs ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -fs ~/dotfiles/bash/bashrc ~/.bashrc
ln -fs ~/doftifles/zsh/.zshrc ~/.zshrc
ln -fs ~/dotfiles/zsh/oh-my-zsh.sh ~/.oh-my-zsh/oh-my-zsh.sh

ln -sf /usr/local/opt/chunkwm/share/chunkwm/plugins/ ~/.chunkwm_plugins

#source ~/.bashrc
#source ~/.config/nvim/init.vim
#nvim +PlugClean +PlugInstall +PlugUpgrade +PlugUpdate +qall

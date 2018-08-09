# This script sets up the sym links

ln -fs ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -fs ~/dotfiles/bash/bashrc ~/.bashrc
ln -fs ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -fs ~/dotfiles/zsh/oh-my-zsh.sh ~/.oh-my-zsh/oh-my-zsh.sh

ln -fs /usr/local/opt/chunkwm/share/chunkwm/plugins/ ~/.chunkwm_plugins
ln -fs ~/dotfiles/.chunkwmrc ~/.chunkwmrc
ln -fs ~/dotfiles/.skhdrc ~/.skhdrc

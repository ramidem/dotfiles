#!/bin/bash

# create symlinks for stuff
# chmod 755 symlinks.sh

# .gitconfig
mv ~/.gitconfig ~/.gitconfig.bak
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig

mv ~/.zshrc ~/.zshrc.bak
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc

mkdir -p ~/.config/nvim
ln -s ~/.dotfiles/config/nvim/init.vim ~/.config/nvim/init.vim

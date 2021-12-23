#!/bin/bash

# create symlinks for stuff
# chmod 755 symlinks.sh

# ~/.gitconfig
mv ~/.gitconfig ~/.gitconfig.bak
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig

# ~/.zshrc
mv ~/.zshrc ~/.zshrc.bak
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc

# ~/.p10k.zsh
ln -s ~/.dotfiles/p10k.zsh ~/.p10k.zsh

# ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim
ln -s ~/.dotfiles/config/nvim/init.vim ~/.config/nvim/init.vim
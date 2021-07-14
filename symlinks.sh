#!/bin/bash

# create symlinks for stuff
# chmod 755 symlinks.sh

# .gitconfig
mv ~/.gitconfig ~/.gitconfig.bak
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig

mv ~/.zshrc ~/.zshrc.bak
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc

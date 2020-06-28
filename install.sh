#!/bin/bash

# make this file executable
# chmod 755 install.sh
echo "Setting up your awesome machine!"
echo "================================"

echo ""
echo "Updating"
echo ""
sudo apt update && sudo apt upgrade -y

# Install Complete Multimedia Support
sudo apt install ubuntu-restricted-extras

# Clean up
echo ""
echo "Cleaning Up"
echo ""
sudo apt autoclean -y && sudo apt clean -y && sudo apt autoremove -y

# Git
echo ""
echo "Setting up Git"
echo ""
git --version
git config --global user.name "Med Aduh"
git config --global user.email "im.ramidem@gmail.com"
git config --global color.ui true
git config --global core.editor vim
git config --list
echo ""

# Vim
echo ""
echo "Installing Vim"
echo ""
sudo apt install vim -y
echo "Installed Vim"
vim -version
echo ""
ln -s ~/dotfiles/vimrc ~/.vimrc
echo "Created .vimrc symlink"
echo "ln -s ~/dotfiles/vimrc ~/.vimrc"
echo ""

# Neovim
echo ""
echo "Installing Neovim"
echo ""
sudo apt install neovim -y
echo ""
mkdir ~/.config/nvim/
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
echo "Created init.vim symlink"
echo "ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim"
echo ""

# Htop
echo ""
echo "Installing htop"
echo ""
sudo apt install htop -y
echo ""

# Htop
echo ""
echo "Installing curl"
echo ""
sudo apt install curl -y
echo ""

# Zsh
echo ""
echo "Installing Zsh"
echo ""
sudo apt install zsh -y
echo ""
echo "Make Zsh the default shell"
chsh -s $(which zsh)
echo ""
echo "Zsh is now the default shell"
echo "Logout and Log back in to enable Zsh"
echo ""

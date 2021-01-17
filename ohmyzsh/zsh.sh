#!/bin/bash

# run this file after install.sh and after setting up git
# chmod 755 zsh.sh

echo "cloning zsh-syntax-highlighting"
echo "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo "cloning zsh-autosuggestions"
echo "git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"


echo "Cloning Spaceship Theme"

echo "git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

echo "ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme""
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"


echo "Cloning Dracula Theme"

echo "git clone https://github.com/dracula/zsh.git ~/dotfiles/temp/dracula"
git clone https://github.com/dracula/zsh.git ~/dotfiles/temp/dracula

echo "cp ~/dotfiles/temp/dracula/dracula.zsh-theme ~/.oh-my-zsh/themes"
cp ~/dotfiles/temp/dracula/dracula.zsh-theme ~/.oh-my-zsh/themes

echo "cp -rf ~/dotfiles/temp/dracula/lib ~/.oh-my-zsh/themes/lib"
cp -rf ~/dotfiles/temp/dracula/lib ~/.oh-my-zsh/themes/lib

echo "rm -rf ~/dotfiles/temp/"
rm -rf ~/dotfiles/temp/
echo "Deleted ~/dotfiles/temp"

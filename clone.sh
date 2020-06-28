#!/bin/bash

# run this file after install.sh and after setting up git
# chmod 755 clone.sh

echo ""
git clone https://github.com/dracula/zsh.git ~/dotfiles/temp/dracula
echo ""
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo ""
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp ~/dotfiles/temp/dracula/dracula.zsh-theme ~/.oh-my-zsh/themes
cp -rf ~/dotfiles/temp/dracula/lib ~/.oh-my-zsh/themes/lib

echo ""
rm -rf ~/dotfiles/temp/
echo "Deleted ~/dotfiles/temp"
echo ""

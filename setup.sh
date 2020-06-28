#!/bin/bash

# run this file after install.sh and after setting up git
# chmod 755 setup.sh

echo ""
echo "Oh-My-Zsh Stuff"
echo "==============="
echo ""
mv ~/.zshrc ~/.zshrc.orig
echo "Backed up .zshrc as .zshrc.orig"
echo "mv ~/.zshrc ~/.zshrc.orig"
echo ""
ln -s ~/dotfiles/zshrc ~/.zshrc
echo "Created symlink for ~/.zshrc"
echo "ln -s ~/dotfiles/zshrc ~/.zshrc"

echo "Installing NVM"
echo "=============="
echo ""
# curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | zsh
echo ""
echo "Installed Latest NPM"
nvm --version
echo ""

echo "Installing Latest NodeJS"
echo "========================"
echo ""

# nvm install --lts
echo ""
echo "Installed Latest NodeJS"
echo ""
node -version
echo ""

echo "Installing Latest NPM"
echo "========================"
echo ""
# nvm install-latest-npm
echo ""
echo "Installed Latest NPM"
npm -v
echo ""

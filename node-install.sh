#!/bin/bash

# run this file after install.sh and after setting up git
# chmod 755 install.sh

echo "Installing NVM"
echo "=============="
echo ""

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | zsh

source ~/.profile
source ~/.bashrc
source ~/.zshrc

echo "Installing Latest NodeJS"
echo "========================"
echo ""

nvm install --lts
echo ""
echo "Installed Latest NodeJS"
echo ""
node -version
echo ""

echo "Installing Latest NPM"
echo "========================"
echo ""

nvm install-latest-npm
echo ""
echo "Installed Latest NPM"
npm -v
echo ""

#!/bin/bash

# make this file executable
# chmod 755 install.sh

echo "Setting up your awesome machine!"
echo "================================"
echo "Updating"

sudo apt update && sudo apt upgrade -y

sudo apt install delta htop tree zsh -y

# Clean up
echo ""
echo "Cleaning Up"
echo ""
sudo apt autoclean -y && sudo apt clean -y && sudo apt autoremove -y

echo "Make Zsh the default shell"
chsh -s $(which zsh)
echo ""
echo "Zsh is now the default shell"
echo "Logout and Log back in to enable Zsh"
echo ""

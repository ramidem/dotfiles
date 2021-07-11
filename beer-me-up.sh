#!/bin/bash

# make this file executable
# chmod 755 beer-me-up.sh

# echo "$(brew list --formula)" | wc -l

# FORMULA="$(brew list --formula)" | wc -l
# echo $FORMULA

# if ["$FORMULA"]
#  then
#   echo "brew remove --force $(brew list --formula)"
#   brew remove --force $(brew list --formula)
# fi

brew remove --force $(brew list --formula)
brew remove --force $(brew list --casks)
brew bundle install --verbose --file=~/.dotfiles/Brewfile

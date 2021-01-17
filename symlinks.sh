#!/bin/bash

# create symlinks for stuff
# chmod 755 symlinks.sh

if test -f "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme"; then
  echo "file exists"
fi

echo "ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme""
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

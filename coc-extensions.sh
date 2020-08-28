#!/usr/bin/bash

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi
# Change extension names to the extensions you need
npm install coc-python coc-tsserver coc-html coc-css coc-json coc-emmet coc-prettier coc-git coc-fzf-preview coc-eslint coc-cssmodules coc-vimlsp coc-phpls --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

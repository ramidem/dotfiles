" Initialize Vim Plug
" =============================================================================
source $DOTFILES/config/nvim/vim-plug/plugins.vim

" Settings
" =============================================================================
source $DOTFILES/config/nvim/general/settings.vim
source $DOTFILES/config/nvim/keys/mappings.vim
source $DOTFILES/config/nvim/keys/functions.vim

" Plug
" =============================================================================
source $DOTFILES/config/nvim/plug/emmet.vim
source $DOTFILES/config/nvim/plug/airline.vim
source $DOTFILES/config/nvim/plug/blamer.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

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
source $DOTFILES/config/nvim/plug/blamer.vim
source $DOTFILES/config/nvim/plug/defx.vim
source $DOTFILES/config/nvim/plug/emmet.vim
source $DOTFILES/config/nvim/plug/lualine.vim
source $DOTFILES/config/nvim/plug/signify.vim
source $DOTFILES/config/nvim/plug/telescope.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

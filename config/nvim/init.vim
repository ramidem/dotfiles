" Initialize Vim Plug
" =============================================================================
source $HOME/dotfiles/config/nvim/vim-plug/plugins.vim

" Settings
" =============================================================================
source $HOME/dotfiles/config/nvim/general/settings.vim
source $HOME/dotfiles/config/nvim/keys/mappings.vim
source $HOME/dotfiles/config/nvim/keys/functions.vim

" Plug
" =============================================================================
source $HOME/dotfiles/config/nvim/plug/coc.vim
source $HOME/dotfiles/config/nvim/plug/emmet.vim
source $HOME/dotfiles/config/nvim/plug/airline.vim
source $HOME/dotfiles/config/nvim/plug/fzf.vim
source $HOME/dotfiles/config/nvim/plug/blamer.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

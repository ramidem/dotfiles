" Initialize Vim Plug
" =============================================================================
source $HOME/dotfiles/nvim/vim-plug/plugins.vim

" Settings
" =============================================================================
source $HOME/dotfiles/nvim/general/settings.vim
source $HOME/dotfiles/nvim/keys/mappings.vim
source $HOME/dotfiles/nvim/keys/functions.vim

" Plug
" =============================================================================
source $HOME/dotfiles/nvim/plug/coc.vim
source $HOME/dotfiles/nvim/plug/emmet.vim
source $HOME/dotfiles/nvim/plug/airline.vim
source $HOME/dotfiles/nvim/plug/fzf.vim
source $HOME/dotfiles/nvim/plug/blamer.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

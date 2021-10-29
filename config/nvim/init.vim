" Initialize Vim Plug
" =============================================================================
source $DOTFILES/config/nvim/vim-plug/plugins.vim

" Settings
" =============================================================================
source $DOTFILES/config/nvim/general/settings.vim
source $DOTFILES/config/nvim/keys/functions.vim
source $DOTFILES/config/nvim/keys/mappings.vim

" Plug
" =============================================================================

" -- LSP
source $DOTFILES/config/nvim/plug/lspconfig.vim
source $DOTFILES/config/nvim/plug/lspinstall.vim

" -- Others
source $DOTFILES/config/nvim/plug/autopairs.lua
source $DOTFILES/config/nvim/plug/blamer.vim
source $DOTFILES/config/nvim/plug/completion.vim
source $DOTFILES/config/nvim/plug/defx.vim
source $DOTFILES/config/nvim/plug/emmet.vim
source $DOTFILES/config/nvim/plug/lualine.vim
source $DOTFILES/config/nvim/plug/signify.vim
source $DOTFILES/config/nvim/plug/telescope.vim
source $DOTFILES/config/nvim/plug/vimwiki.vim
" source $DOTFILES/config/nvim/plug/rooter.vim

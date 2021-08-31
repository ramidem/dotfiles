" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" COLORS
" =========================================================================
Plug 'gruvbox-community/gruvbox'

" UTILITIES
" =========================================================================
Plug 'airblade/vim-rooter'
Plug 'editorconfig/editorconfig-vim'
Plug 'hoob3rt/lualine.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-commentary'

" GIT
" =========================================================================
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  " GIT
  " =====================================================================
  Plug 'APZelos/blamer.nvim'
  Plug 'mhinz/vim-signify'

  " " COLORS
  " " =====================================================================
  Plug 'kyazdani42/nvim-web-devicons'

  " " EXPLORER
  " " =====================================================================
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

  " " LSP
  " " =====================================================================
  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
endif
call plug#end()

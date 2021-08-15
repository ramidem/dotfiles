" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " COLORS
    " =========================================================================
    Plug 'gruvbox-community/gruvbox'

    " UTILITIES
    " =========================================================================
    Plug 'airblade/vim-rooter'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'mattn/emmet-vim'
    Plug 'metakirby5/codi.vim'
    Plug 'tpope/vim-commentary'
    Plug 'hoob3rt/lualine.nvim'


    " GIT
    " =========================================================================
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'

    if has("nvim")
        " COLORS
        " =====================================================================
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'ryanoasis/vim-devicons'

        " EXPLORER
        " =====================================================================
        Plug 'nvim-lua/popup.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
        Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

        " GIT
        " =====================================================================
        Plug 'APZelos/blamer.nvim'
        Plug 'mhinz/vim-signify'

        " LSP Stuff
        " =====================================================================
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'nvim-lua/completion-nvim'
        Plug 'neovim/nvim-lspconfig'
    endif
call plug#end()

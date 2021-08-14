" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Snippets
    Plug 'honza/vim-snippets'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Gruvbox Colorscheme
    Plug 'gruvbox-community/gruvbox'

    " Tmuxline
    Plug 'edkolev/tmuxline.vim'

    " Interactive Scratchpad
    Plug 'metakirby5/codi.vim'

    " Syntax highlighting
    Plug 'sheerun/vim-polyglot'

    " --- Make sure I am in project's root folder
    Plug 'airblade/vim-rooter'

    " Respect .editorconfig
    Plug 'editorconfig/editorconfig-vim'

    " Emmet.Vim
    Plug 'mattn/emmet-vim'

    " Vim Commentary
    Plug 'tpope/vim-commentary'

    " Vim Fugitive
    Plug 'tpope/vim-fugitive'

    if has("nvim")
        " Blamer
        Plug 'APZelos/blamer.nvim'

        " Vim Signify
        Plug 'mhinz/vim-signify'

        " Telescope
        Plug 'nvim-lua/popup.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'

        " Telescope FZF Native
        Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

        " Defx
        Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

        " Nvi-Treesitter
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

        " Lualine
        Plug 'hoob3rt/lualine.nvim'

        " Devicons
        Plug 'kyazdani42/nvim-web-devicons' " for file icons
        " Plug 'kyazdani42/nvim-tree.lua'
        Plug 'ryanoasis/vim-devicons'

        " Completion
        Plug 'nvim-lua/completion-nvim'

        " Nvim LSP
        Plug 'neovim/nvim-lspconfig'

    endif
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

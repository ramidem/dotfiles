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

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Gruvbox Colorscheme
    Plug 'gruvbox-community/gruvbox'

    " Airline Status Line
    Plug 'vim-airline/vim-airline'

    " Tmuxline
    Plug 'edkolev/tmuxline.vim'

    " Interactive Scratchpad
    Plug 'metakirby5/codi.vim'

    " Syntax highlighting
    Plug 'sheerun/vim-polyglot'

    Plug 'preservim/nerdtree'

    " --- Make sure I am in project's root folder
    Plug 'airblade/vim-rooter'

    " Respect .editorconfig
    Plug 'editorconfig/editorconfig-vim'

    " Emmet.Vim
    Plug 'mattn/emmet-vim'

    " Vim Commentary
    Plug 'tpope/vim-commentary'

    Plug 'APZelos/blamer.nvim'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Telescope FZF Native
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

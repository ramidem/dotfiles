"""""""""""""""""""""""""""""""""
" Author:	Med Aduh
" Website:	http://ramidem.me
" Email:	im.ramidem@gmail.com
" Twitter:	@ramidem
"""""""""""""""""""""""""""""""""

" TODO {{{
"
" Move stuff into each sections for better settings organization
" Based on ':options'
"
" This way I won't be overwhelming my brain with Vim's magic.
" YES! I was using arrow keys in Insert mode.
" }}}

" Important {{{
set nocompatible							" Disable vi-compatibility
execute pathogen#infect()
" }}}
" Moving Around, Searching and Patterns {{{
set ignorecase								" Ignore case in search pattern
set hlsearch								" Higlhight search
set smartcase
set incsearch
set gdefault

" }}}
" Tags {{{

" }}}
" Displaying Text {{{
set number										" Always show line numbers

" }}}
" Syntax, Hightlighting and Spelling {{{
set background=dark
syntax on
filetype on
filetype indent on
filetype plugin on
set cursorline

" }}}
" Multiple Windows {{{
set laststatus=2							" Always show the statusline

set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

" }}}
" Multiple Tab Pages {{{

" }}}
" Terminal {{{
let g:solarized_termcolors=256
colorscheme solarized

" }}}
" Using the Mouse {{{

" }}}
" Printing {{{

" }}}
" Messages and Info {{{
set showcmd

" }}}
" Selecting Text {{{
set showmatch

" }}}
" Editing Text {{{

" }}}
" Tabs and Indenting {{{
set tabstop=2
set autoindent

" }}}
" Folding {{{
set foldenable

	" For better organization
set foldmethod=marker
set foldlevel=0

" }}}
" Diff Mode {{{

" }}}
" Mapping {{{
" Pressing jj fast escapes Insert Mode
:imap jj <Esc>
" }}}
" Reading and Writing Files {{{
set modelines=1

" }}}
" The Swap File {{{
set noswapfile
" }}}
" Command Line Editing {{{

" }}}
" Executing External Commands {{{

" }}}
" Running Make and Jumping to Errors {{{

" }}}
" Language Specific {{{

" }}}
" Multi-byte Characters {{{
set encoding=utf-8						" Necessary to show Unicode glyphs
set fileencoding=utf-8

" }}}
" Various {{{

" }}}
" Vim Airline {{{
let g:airline_powerline_fonts = 1
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
" }}}

" vim:foldmethod=marker:foldlevel=0

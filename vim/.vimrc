" .vimrc by Michael Scott
" Updated on 09.02.2020
"
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
"set pastetoggle=<F2>
"set clipboard=unnamed

" Spaces & Tabs
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces

" UI Config https://dougblack.io/words/a-good-vimrc.html
"execute pathogen#infect()
set number  " show line numbers
set relativenumber
set so=10
set showcmd " show command in bottom bar
set cursorline  " highlight current line
filetype indent on  " load filetype-specific indent files
set wildmenu    " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
"set tw=79  " width of document (used by gd)
set backspace=indent,eol,start

" Show whitespace
" Must be inserted before the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

" Enable syntax highlighting
filetype off
filetype plugin on
syntax on

set background=dark

" Color scheme
" Source - https://github.com/rafi/awesome-vim-colorschemes
" location ~/.vim/colors

"colorscheme atom
"colorscheme badwolf
"colorscheme dracula
"colorscheme github
"colorscheme jellybeans
"colorscheme minimalist
"colorscheme molokai
"colorscheme solarized8
"colorscheme solarized8_flat
"colorscheme wombat256mod
colorscheme gruvbox

" Enable to use mouse in vim
"if has('mouse')
" set mouse=a
"endif

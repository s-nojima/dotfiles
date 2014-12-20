set nocompatible
set noswapfile
set title
set wildmenu
set browsedir=buffer
set background=dark
set hidden
syntax on
colorscheme desert
highlight LineNr ctermfg=darkyellow
filetype indent plugin on
"standard option

"status line 
set showmatch
set ruler
set number
set showcmd
set cmdheight=2
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>
set backspace=indent,eol,start
set nostartofline
set visualbell
set laststatus=2

"indent action 
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

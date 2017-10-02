set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'kannokanno/previm'
Plugin 'plasticboy/vim-markdown'
Plugin 'tyru/open-browser.vim'
call vundle#end()

"standard option
set nocompatible
set noswapfile
set notitle
set wildmenu
set browsedir=buffer
set background=dark
set hidden
filetype indent plugin on
colorscheme evening
syntax on

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

autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown
"
"key map
nnoremap <silent> <C-p> :PrevimOpen<CR> " Ctrl-pでプレビュー
nnoremap :tree :NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>

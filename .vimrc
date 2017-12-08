set rtp+=/home/red-c/dotfiles/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kannokanno/previm'
Bundle 'plasticboy/vim-markdown'
Bundle 'tyru/open-browser.vim'
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

"view tab space
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

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
vnoremap <silent> <C-p> "0p<CR>
nnoremap <silent> <C-o> :PrevimOpen<CR> " Ctrl-pでプレビュー
nnoremap :tree :NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>

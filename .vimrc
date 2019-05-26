"
" Vundle.vim
"
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kannokanno/previm'
Bundle 'plasticboy/vim-markdown'
Bundle 'tyru/open-browser.vim'

call vundle#end()            " required
filetype plugin indent on    " required

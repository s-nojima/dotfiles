"autocmd VimEnter * execute 'NERDTree'
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
colorscheme evening
set t_Co=256
syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set belloff=all
set autoindent
set smartindent
set smarttab
set showmatch
set number
set list
set listchars=tab:».,trail:_,eol:↲,extends:»,precedes:«,nbsp:%

function! SOLSpaceHilight()
    syntax match SOLSpace "^\s\+" display containedin=ALL
    highlight SOLSpace term=underline ctermbg=DarkGray
endf
function! JISX0208SpaceHilight()
    syntax match JISX0208Space "　" display containedin=ALL
    highlight JISX0208Space term=underline ctermbg=LightCyan
endf
if has("syntax")
    syntax on
        augroup invisible
        autocmd! invisible
        autocmd BufNew,BufRead * call SOLSpaceHilight()
        autocmd BufNew,BufRead * call JISX0208SpaceHilight()
    augroup END
endif


"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=/home/red-c/.cache/dein/repos/github.com/Shougo/dein.vim

    " Required:
    call dein#begin('/home/red-c/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/home/red-c/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here like this:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('preservim/nerdtree')

    " Required:
    call dein#end()

    " Required:
    filetype plugin indent on
    syntax enable

    " If you want to install not installed plugins on startup.
    if dein#check_install()
      call dein#install()
    endif

"End dein Scripts-------------------------



autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" lhs comments
vmap ,# :s/^/#/<CR>:nohlsearch<CR>
vmap ,/ :s/^/\/\//<CR>:nohlsearch<CR>
vmap ,> :s/^/> /<CR>:nohlsearch<CR>
vmap ," :s/^/\"/<CR>:nohlsearch<CR>
vmap ,% :s/^/%/<CR>:nohlsearch<CR>
vmap ,! :s/^/!/<CR>:nohlsearch<CR>
vmap ,; :s/^/;/<CR>:nohlsearch<CR>
vmap ,- :s/^/--/<CR>:nohlsearch<CR>
vmap ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>:nohlsearch<CR>

" wrapping comments
vmap ,* :s/^\(.*\)$/\/\* \1 \*\//<CR>:nohlsearch<CR>
vmap ,( :s/^\(.*\)$/\(\* \1 \*\)/<CR>:nohlsearch<CR>
vmap ,< :s/^\(.*\)$/<!-- \1 -->/<CR>:nohlsearch<CR>
vmap ,d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>:nohlsearch<CR>

" block comments
vmap ,b v`<I<CR><esc>k0i/*<ESC>`>j0i*/<CR><esc><ESC>
vmap ,h v`<I<CR><esc>k0i<!--<ESC>`>j0i--><CR><esc><ESC>

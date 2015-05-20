set nocompatible
set noswapfile
set title
set wildmenu
set browsedir=buffer
set background=dark
set hidden
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
set shiftwidth=4
set smarttab
set expandtab

"NeoBundle
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'scrooloose/nerdtree'
let g:nerdtree_tabs_smart_startup_focus = 1
let g:NERDTreeShowHidden = 1
nnoremap <silent><C-e> :NERDTreeToggle<CR>

NeoBundle 'taglist.vim'
set tags=~/.vim/tags
let Tlist_Use_Right_Window   = 1
let Tlist_Auto_Open = 0
nnoremap <silent><C-t> :Tlist<CR>

NeoBundle 'wesleyche/SrcExpl'
let g:SrcExpl_RefreshTime = 1
let g:SrcExpl_UpdateTags = 1
nnoremap <silent><F8> :SrcExplToggle<CR>

NeoBundle 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
  \     'windows' : 'make -f make_mingw32.mak',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'unix' : 'make -f make_unix.mak',
  \    },
  \ }

NeoBundle 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

autocmd FileType javascript :set dictionary=$HOME/.vim/dict/javascript.dict,$HOME/.vim/dict/jQuery.dict

"php dev
"NeoBundle 'violetyk/neocomplete-php.vim'
"let g:neocomplete_php_locale = 'ja'

NeoBundle 'Townk/vim-autoclose'

NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)



NeoBundle 'scrooloose/syntastic'
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_enable_highlighting = 1
let g:syntastic_php_php_args = '-l'
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

call neobundle#end()

colorscheme evening
syntax on

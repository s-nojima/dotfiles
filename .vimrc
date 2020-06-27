if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.vim/bundles')

let s:dein_repo_dir = s:dein_dir . '~dein.vim'

" dein.vimが存在していない場合はgithubからclone
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml_dir = expand('~/.vim')

  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
set expandtab
set tabstop=2
set shiftwidth=2

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let g:user_emmet_leader_key='<c-t>'
syntax enable
colorscheme tender
vnoremap <silent> <C-p> "0p<CR>
let g:vim_markdown_folding_disabled=1
let g:previm_enable_realtime = 1

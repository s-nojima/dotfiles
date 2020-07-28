if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/home/red-c/.vim/bundles~dein.vim/,/home/red-c/.vim,/var/lib/vim/addons,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/etc/vim/after,/var/lib/vim/addons/after,/home/red-c/.vim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/red-c/.vimrc', '/home/red-c/.vim/dein.toml', '/home/red-c/.vim/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/red-c/.vim/bundles'
let g:dein#_runtime_path = '/home/red-c/.vim/bundles/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/red-c/.vim/bundles/.cache/.vimrc'
let &runtimepath = '/home/red-c/.vim/bundles~dein.vim/,/home/red-c/.vim,/var/lib/vim/addons,/etc/vim,/usr/share/vim/vimfiles,/home/red-c/.vim/bundles/repos/github.com/Shougo/dein.vim,/home/red-c/.vim/bundles/.cache/.vimrc/.dein,/usr/share/vim/vim81,/home/red-c/.vim/bundles/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/etc/vim/after,/var/lib/vim/addons/after,/home/red-c/.vim/after'
filetype off

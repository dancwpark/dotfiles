" PLUGINS
" =======================================================================
" VIM-PLUG
" ... github.com/junegunn/vim-plug
" INSTALL VIM-PLUG
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" INSTALL PLUGINS :PlugInstall
" UPDATE PLUGINS  :PlugUpdate
" UPDATE VIMPLUG  :PlugUpgrade
" ========================================================================
call plug#begin('~/.vim/plugged')
" ------------------------------------
" COC
" https://github.com/neoclide/coc.nvim
" CoCInstall coc-
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NERD Tree - tree explorer
" https://github.com/scrooloose/nerdtree
" http://usevim.com/2012/07/18/nerdtree/
" (loaded on first invocation of the command)
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" NERD tree toggle
map  <C-N> :NERDTreeToggle<CR>a

" nerdtree-git-plugin - show git status in NERD Tree
" https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" vim-airline
" Enhanced statusline
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
" https://github.com/vim-airline/vim-airline-themes
Plug 'vim-airline/vim-airline-themes'

" Excellent git wrapper
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" vim-misc
" https://github.com/xolox/vim-misc
Plug 'xolox/vim-misc'

" Tagbar
" https://github.com/majutsushi/tagbar
Plug 'majutsushi/tagbar'

" Markdown support
" https://github.com/plasticboy/vim-markdown
"Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'

" Nice interaction with tmux
" https://github.com/benmills/vimux
Plug 'benmills/vimux'

" Fuzzy file, buffer, mru, tag, etc finder
" ctrlp.vim
" https://github.com/ctrlpvim/ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim'

" OMG - insanely awesome fuzzy search and blazing fast grep
" https://github.com/junegunn/fzf (parent project)
" https://github.com/junegunn/fzf.vim (more extensive wrapper)
" https://medium.com/@crashybang/supercharge-vim-with-fzf-and- \
"  ripgrep-d4661fc853d2#.rkhrm332m
" To update: :PlugUpdate fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" indentline
" https://github.com/Yggdroot/indentLine
Plug 'Yggdroot/indentLine'

" -------------------------------------
" Add plugins to &runtimepath
call plug#end()
" =====================================

" NERD tree settings
" =====================================
" Auto start NERD tree when opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | endif

" Auto start NERD tree if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif

" Let quit work as expected if after entering :q the only window left open 
"  is NERD Tree itself
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show hidden
let NERDTreeShowHidden=1
" =====================================

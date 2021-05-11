" nVIm
" =====================================
" Leader Key <SPACE>
let mapleader="\<SPACE>"
" Copy/Paste to system clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" leaving emulated terminal
tnoremap jj <C-\><C-n>
" SHORCUTS (search nnoremap for all code)
" Clear :s search         <CTRL-l>
" Toggle rel line num     <LEADER-r>
nnoremap ; :
nnoremap <leader>n :noh<CR> 
" Basic VIm
" =====================================
set mouse=a
set showmatch			        " Show matching brackets.
set number                " Show line numbers
set formatoptions+=o		  " Conitinue comment marker in new lines
set expandtab			        " Insert spaces when TAB is pressed
set tabstop=2			        " Tabs are this many spaces
set shiftwidth=2		      " Indentation amount for < and > command
set hlsearch
set ruler                 " Enable column and line display
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
syntax on
filetype on
filetype plugin on
filetype indent on
" =====================================

" Natural splits
" =====================================
set splitbelow			      " Horizontal split below current
set splitright			      " Vertical split to the right of current
if !&scrolloff
	set scrolloff=3		      " Show next 3 lines while scrolling
endif
if !&sidescrolloff
	set sidescrolloff=5 	  " Show next 5 columns while side-scrolling
endif
set nostartofline 		    " Do not jump to first character with page cmds
" =====================================


" Searching
" =====================================
set ignorecase            " Make searching case insensitive
set smartcase             " ... unless the query has capital letters
set gdefault              " U 'g' flag by default with :s/foo/bar.
" Use <C-L> to clear the highlighting of :set hlsearch
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif
" Search and Replace
" nmap <Leader>s :%s//g<Left><Left>

" =====================================

" Relative numbering
" =====================================
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc
" Toggle between normal and relative numbering
nnoremap <leader>r :call NumberToggle()<cr>
" =====================================

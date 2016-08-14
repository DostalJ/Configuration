set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'davidhalter/jedi-vim'
Bundle 'sickill/vim-monokai'
Bundle 'lervag/vimtex'
Bundle 'tpope/vim-fugitive'

" The bundles you install will be listed here
call vundle#end()
filetype plugin indent on

" The rest of your config follows here


" JEDI
"nebude automaticky zobrazovat dokumentaci
autocmd FileType python setlocal completeopt-=preview 

"Open NERDTree by presing F2, pres ? to see list of commands
map <F2> :NERDTreeToggle<CR>
 
" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir

" I'm prefer spaces to tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" more subtle popup colors
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold
endif

"autoindentation
set autoindent
"show the matching brackets
set showmatch
"show visual line under the cursor's current line
set cursorline
"encoding
set encoding=utf-8

"Color schemes
syntax enable
colorscheme monokai
"shared clipboard
set clipboard=unnamed
"line numbering
set relativenumber
set number
"enabeling mouse
set mouse=a
" Better command-line completion
set wildmenu

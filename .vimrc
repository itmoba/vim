set nocompatible      " be iMproved
set ttyfast		  " added by me
set incsearch		  " added by me
set ignorecase		  " added by me
set colorcolumn=80	  " added by me
filetype off          " required!

" No distractions
set nohls	" highlight previous search matches
set number	" show line number
set ruler	" sets rules when using ':' (colon) command line


set showcmd
set title
set wildmenu
set hidden
set showmode

" Might have to delete
syntax enable


" Theme
set t_Co=256
colorscheme molokai
" colorscheme monokai
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
" set background=light


" Highlight current line
if v:version > 700
	set cursorline
	hi CursorLine ctermbg=Black guibg=#000000
endif


" START VUNDLE
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'https://github.com/vim-scripts/c.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'lsdr/monokai'
Bundle 'sickill/vim-monokai'
Bundle 'bling/vim-airline'

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" Afore line commented out to avoid the silly warning
" ...

filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 
 " CUSTOM COMMANDS
 command BCS execute "!cscope -bCqRUv"
 " LaZy
 command BCSCOPE execute "!cscope -bCqRUv"
 " LaZy
 command CS execute "!cscope -CqRUv"
 " LaZy
 command CSCOPE execute "!cscope -CqRUv"
 " Ditto ?

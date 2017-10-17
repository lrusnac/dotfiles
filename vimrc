set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" nerdtree
Plugin 'scrooloose/nerdtree'

" plugin for golang
Plugin 'fatih/vim-go'

" plugin for git diff signs on the left
Plugin 'mhinz/vim-signify'

" line
Plugin 'itchyny/lightline.vim'
" Plugin 'vim-airline/vim-airline'

" testing area
Plugin 'majutsushi/tagbar'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'


" fuzzy file 
Plugin 'ctrlpvim/ctrlp.vim'

" ack.vim
Plugin 'mileszs/ack.vim'
let g:ackprg = 'rg --vimgrep' " (use rip_grep instead of ack command line)

" colorscheme
" Plugin 'rhysd/vim-color-spring-night'
" Plugin 'liuchengxu/space-vim-dark'

call vundle#end()

set encoding=utf-8

" vim airline config
let g:airline_powerline_fonts = 1

" tagbar config, auto jump to tagbar on opening
let g:tagbar_autofocus=1

" automatic filetype detection (plugins and indent specific)
filetype on
filetype plugin on
filetype indent on

" colorscheme
set t_Co=256
syntax on
colorscheme slate

set background=dark
set cursorline

" leader
let mapleader=","

" indentation
set autoindent
set smartindent

set smarttab
set tabstop=4
set softtabstop=4
set shiftround
set shiftwidth=4
set expandtab

set foldenable
set foldlevelstart=6
set foldnestmax=10

set noautoread
set autowrite
set backspace=indent,eol,start
set noconfirm
set noerrorbells

set encoding=utf-8
set nodigraph

set hidden
set ignorecase
set infercase
set smartcase
set incsearch
set hlsearch

" centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

set history=1200
set wildignore=*~,*.swp,*.bak,*.pyc,*.class
set undolevels=1200
set undofile

set ttyfast
set textwidth=71
set wrap
set formatoptions=qrn11
if exists("+colorcolumn")
    set colorcolumn=85
endif


set scrolloff=5
set laststatus=2 " airline always open
set number
set relativenumber
set ruler
set showcmd
set showmode
set wildmenu
set wildmode=list:longest
set wrapscan

set title
set visualbell

set list
set listchars=tab:»\ ,trail:·
highlight SpecialKey ctermfg=11

" spell check
" set spell spelllang=en_gb

" learn to use hjkl
" map <Left> :echo 'damnit!'<cr>
" map <Right> :echo 'you suck!'<cr>
" map <Up> :echo 'this is why you fail'<cr>
" map <Down> :echo 'nooooo!'<cr>


" plugin nerdtree setup
:nnoremap <leader>n :NERDTreeToggle<CR>
:nnoremap <leader>t :TagbarToggle<CR>
" ----------------------------------------------------------------------------
" Buffers
" ----------------------------------------------------------------------------
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>

" ----------------------------------------------------------------------------
" Tabs
" ----------------------------------------------------------------------------
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

" ----------------------------------------------------------------------------
" Ctrlp
" ----------------------------------------------------------------------------
:nnoremap <leader>p :CtrlP<CR>

" ----------------------------------------------------------------------------
" LightLine
" ----------------------------------------------------------------------------
let g:lightline = {'colorscheme': 'seoul256'}

" ----------------------------------------------------------------------------
" Ack.vim
" ----------------------------------------------------------------------------
if executable('rg')
    let g:ackprg = 'rg --vimgrep'
endif


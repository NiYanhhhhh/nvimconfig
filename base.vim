" base
set helplang=cn
set nocompatible
filetype on
filetype plugin on
filetype plugin indent on
set autochdir
set nobackup
set noswapfile
set history=1024
set nobomb
set whichwrap=b,s,<,>,[,],h,l
set backspace=2
set clipboard+=unnamed
set backspace=indent,eol,start
set lazyredraw

"coding"
set encoding=utf-8
set termencoding=utf-8
set fencs=utf-8
let $lang = 'en_us.utf-8'
let g:python3_host_prog='/usr/bin/python'
let g:python_host_prog='/usr/bin/python2'

" intent settings"
set expandtab
set smartindent
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
au filetype python,java,vim,scala set tabstop=4
au filetype python,java,vim,scala set softtabstop=4
au filetype python,java,vim,scala set shiftwidth=4
au filetype json,lua set tabstop=2
au filetype json,lua set softtabstop=2
au filetype json,lua set shiftwidth=2

" appearance
if has('termguicolors')
    set termguicolors
endif
set background=light
syntax on
autocmd bufread,bufnewfile *.c,*.h,*.cpp,*.java,*.py set expandtab
set splitright
set splitbelow
set hlsearch
set incsearch
set ignorecase
set smartcase
set cursorline
set cursorcolumn
set ruler
set number
set relativenumber
set scrolloff=3
set showmode
set showcmd
set mouse=a
hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow

" behaviors
autocmd BufEnter * if &filetype == 'qf' && winnr('$') < 2 | q | endif
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
set completeopt+=noinsert,noselect

" netrw
let g:netrw_banner = 0

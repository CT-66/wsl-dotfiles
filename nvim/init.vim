set nocompatible
set t_Co=256
set encoding=UTF-8
set nobackup
set nowritebackup
set noswapfile
set cmdheight=2
set updatetime=300
filetype plugin indent on
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set mouse=a
set noshowmode " already shown by statusline
set clipboard=unnamedplus
" show matching brackets/parenthesis
" set showmatch


" -----

" colorscheme nord
colorscheme onedark
" colorscheme one

" -----

set number relativenumber
set visualbell
set t_vb=
set noerrorbells
set tm=500
set ttimeoutlen=50
set title
set confirm
set wrap
set foldcolumn=1

set cursorline

if has("unix")
    :source ~/.config/nvim/plugins.vim
    :source ~/.config/nvim/plugins-settings.vim
    :source ~/.config/nvim/keymaps.vim
elseif has("win32")
    :source ~\AppData\Local\nvim\plugins.vim
    :source ~\AppData\Local\nvim\plugins-settings.vim
    :source ~\AppData\Local\nvim\keymaps.vim
    :source ~\AppData\Local\nvim\windows-related-config.vim
endif

" -----

function! RunPythonFile()
    :w
    :exec '!python.exe' shellescape(@%, 1)
endfunction



set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set ai
set si

set hlsearch
set ignorecase
set smartcase
set incsearch

syntax enable
syntax on

set shortmess=I
set shortmess+=a
set shortmess+=F
set shortmess+=c

set autoread
au FocusGained,BufEnter * checktime

set matchpairs+=<:>

set ruler

set backspace=indent,eol,start
set whichwrap+=<,>,h,l

set encoding=utf-8

" -----

" Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Allow comments in json
autocmd FileType json set filetype=jsonc

" set default filetype for new file as `.md`
autocmd BufEnter * if &filetype == "" | setlocal ft=markdown | endif

" https://github.com/plasticboy/vim-markdown/issues/126
au filetype markdown set formatoptions+=ro
au filetype markdown set comments=b:*,b:-,b:+,b:1.,n:>

" -----

set laststatus=2
" let g:coc_global_extensions = [
"   \ 'coc-snippets',
"   \ 'coc-pairs',
"   " \ 'coc-tsserver',
"   \ 'coc-eslint',
"   " \ 'coc-prettier',
"   \ 'coc-json',
"   \ 'coc-pyright',
" ]


let g:vimsyn_embed = 'l' " get lua syntax highlighting in vimscript

" -----

highlight Visual guibg=#434C5E
highlight Search guifg=#C678DD guibg=#4C566A
highlight Comment guifg=#7f848e

" Pmenu
" highlight Pmenu guifg=#434C5E

" Pmenu		Popup menu: normal item.
" PmenuSel	Popup menu: selected item.
" PmenuSbar	Popup menu: scrollbar.
" PmenuThumb	Popup menu: Thumb of the scrollbar.

" -----

cnoremap help vert help

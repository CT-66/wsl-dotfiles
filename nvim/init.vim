filetype on
filetype indent on
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
" set mouse=a
set clipboard=unnamedplus
" show matching brackets/parenthesis
set showmatch

:so ~/.config/nvim/plugins.vim
:so ~/.config/nvim/plugins-settings.vim


function! RunPythonFile()
    :w
    :exec '!python.exe' shellescape(@%, 1)
endfunction

" colorscheme nord
" colorscheme onedark
colorscheme one

let g:nord_bold = 1
" visual mode selection color
autocmd ColorScheme * highlight Visual ctermbg=55

" good visual selections as of now-19, 20, 24, 25, 55, 60, 104, 129

augroup nord-theme-overrides
  autocmd!
  " comment colors
   autocmd ColorScheme nord highlight Comment ctermfg=245
augroup END

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


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
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white

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

set autoread
au FocusGained,BufEnter * checktime

let mapleader = " "

nmap <leader><leader> :w<cr>
nmap <escape><escape> :w<cr>
map <leader>/ gcc
map <leader>a ggVG
nmap <leader>b :call RunPythonFile()<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set ruler

set backspace=indent,eol,start
set whichwrap+=<,>,h,l

set encoding=utf-8

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Disables automatic commenting on newline:
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Automatically deletes all trailing whitespace and newlines at end of file on save.
    " autocmd BufWritePre * %s/\s+$//e
    " autocmd BufWritePre * %s/\n+%$//e
    " autocmd BufWritePre *.[ch] %s/%$/\r/e


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
" use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
  let &t_EI .= "\<Esc>[2 q"


hi Search cterm=NONE ctermfg=grey ctermbg=blue

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

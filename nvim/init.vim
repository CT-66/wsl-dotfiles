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
set mouse=a
set noshowmode " already shown by statusline
set clipboard=unnamedplus
" show matching brackets/parenthesis
" set showmatch

if has("unix")
    :source ~/.config/nvim/plugins.vim
    :source ~/.config/nvim/plugins-settings.vim
elseif has("win32")
    :source ~\AppData\Local\nvim\plugins.vim
    :source ~\AppData\Local\nvim\plugins-settings.vim
endif


function! RunPythonFile()
    :w
    :exec '!python.exe' shellescape(@%, 1)
endfunction

" colorscheme nord
" colorscheme onedark
colorscheme one

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
set shortmess+=c

set autoread
au FocusGained,BufEnter * checktime

let mapleader = " "

nmap <leader><leader> :w<cr>
nmap <escape><escape> :w<cr>
nmap <leader>/ gcc
nmap <leader>a ggVG
nmap <leader>b :call RunPythonFile()<CR>
nmap <leader>v :source ~/.config/nvim/init.vim<cr>

" nnoremap <Bs> x
nnoremap U <C-r>

nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
nnoremap x "_x
nnoremap X "_X
nnoremap c "_c

nmap j gj
nmap k gk
nmap <Up> gk
nmap <Down> gj

nnoremap <Left> ^
nnoremap <Right> $

nmap d<Left> d^
nmap d<Right> d$

nnoremap Q <Nop>

" disable the dreaded ex mode
" nnoremap Q @q

" Indent/dedent what you just pasted
nnoremap <leader>< V`]<
nnoremap <leader>> V`]>

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

" clear highlighted results after a search
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

let g:vimsyn_embed = 'l' " get lua syntax highlighting in vimscript

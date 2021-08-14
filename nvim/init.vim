" Add comments to (almost) all lines
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
" set clipboard=unnamed

:so ~/.config/nvim/plugins.vim

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


set number
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

nmap \ :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:highlightedyank_highlight_duration = 100
highlight HighlightedyankRegion ctermbg=19
" 19, 20, 24, 25, 55, 60, 104, 129

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

" highlight BadWhitespace ctermbg=red guibg=darkred
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set encoding=utf-8

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

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


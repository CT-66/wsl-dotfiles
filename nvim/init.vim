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
    :source ~/.config/nvim/keymaps.vim
elseif has("win32")
    :source ~\AppData\Local\nvim\plugins.vim
    :source ~\AppData\Local\nvim\plugins-settings.vim
    :source ~\AppData\Local\nvim\keymaps.vim
    :source ~\AppData\Local\nvim\windows-specific-config.vim
endif

function! RunPythonFile()
    :w
    :exec '!python.exe' shellescape(@%, 1)
endfunction

" colorscheme nord
colorscheme onedark
" colorscheme one

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

set matchpairs+=<:>

set ruler

set backspace=indent,eol,start
set whichwrap+=<,>,h,l

set encoding=utf-8

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

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

let g:vimsyn_embed = 'l' " get lua syntax highlighting in vimscript

augroup JsonToJsonc
    autocmd! FileType json set filetype=jsonc
augroup END

highlight Visual guibg=#434C5E
highlight Search guifg=#C678DD guibg=#4C566A
highlight Comment guifg=#7f848e

" Pmenu
" highlight Pmenu guifg=#434C5E

" Pmenu		Popup menu: normal item.
" PmenuSel	Popup menu: selected item.
" PmenuSbar	Popup menu: scrollbar.
" PmenuThumb	Popup menu: Thumb of the scrollbar.

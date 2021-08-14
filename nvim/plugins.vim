call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'machakann/vim-highlightedyank'
Plug 'sheerun/vim-polyglot'
Plug 'kevinhwang91/nvim-bqf'
Plug 'ryanoasis/vim-devicons' " Always last


call plug#end()

let g:deoplete#enable_at_startup = 1
" let g:jedi#use_tabs_not_buffers = 1
let g:rainbow_active = 1
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#environment_path = "python.exe"
" let g:airline_theme='onedark'
let g:airline_theme='one'
let g:onedark_termcolors=256



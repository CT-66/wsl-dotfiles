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
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
" Plug 'vim-syntastic/syntastic'
" Plug 'ervandew/supertab'
" Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons' " Always last


call plug#end()

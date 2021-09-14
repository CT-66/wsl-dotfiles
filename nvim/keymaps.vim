let mapleader = " "

" use tab completion for coc.nvim
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" leader key bindings
nmap <leader><leader> :w<cr>
nmap <C-_> gcc
xmap <C-_> gcc <esc>
nmap <leader>a ggVG
nmap <leader>b :call RunPythonFile()<cr>
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

" disable  ex mode
nnoremap Q <Nop>

nmap ; :

" Stay in visual mode when indenting
vnoremap < <gv
vnoremap > >gv

" clear highlighted results after a search
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" disable help (f1)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" disable trying to find man page entry (K)
nnoremap K <Nop>
xnoremap K <Nop>

" center cursor on movements like `j`, `k`, `G` and `n`, `N`
" set scrolloff=999
nnoremap j jzz
nnoremap k kzz
nnoremap <Down> jzz
nnoremap <Up> kzz
nnoremap G Gzz

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" nnoremap { {zz
" nnoremap } }zz

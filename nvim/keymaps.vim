let mapleader = " "

" use tab completion for coc.nvim
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" leader key bindings
nmap <leader><leader> :w<cr>
nmap <escape><escape> :w<cr>
nmap <leader>/ gcc
xmap <leader>/ gcc
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

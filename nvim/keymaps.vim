let mapleader = " "

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" " coc.nvim

nmap <leader><leader> :w<cr>
nmap <escape><escape> :w<cr>
nmap <leader>/ gcc
nmap <leader>a ggvg
nmap <leader>b :call runpythonfile()<cr>
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

" disable the dreaded ex mode
nnoremap Q <Nop>

nmap ; :

" Indent/dedent what you just pasted
nnoremap <leader>< V`]<
nnoremap <leader>> V`]>

" clear highlighted results after a search
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

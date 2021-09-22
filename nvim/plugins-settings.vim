:lua require('plugins-settings')

" nerdtree
" nmap \ :NERDTreeToggle<CR>
" let NERDTreeShowHidden=1

" nvim-tree.lua
let g:nvim_tree_side = 'left'


" -----

" highlighted yank
let g:highlightedyank_highlight_duration = 100

" -----

" let g:deoplete#enable_at_startup = 1
let g:indent_guides_enable_on_vim_startup = 1
" let g:jedi#use_tabs_not_buffers = 1
let g:rainbow_active = 1
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#environment_path = "python.exe"
let g:airline_theme='onedark'
" let g:airline_theme='one'
let g:onedark_termcolors=256

" -----

" better whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:better_whitespace_guicolor='darkred'
let g:strip_whitespace_confirm=0
let g:strip_whitelines_at_eof=1

" -----

" coc.nvim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" -----

" hexokinase
let g:Hexokinase_highlighters = [ 'virtual' ]

let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

let g:Hexokinase_ftEnabled = ['css', 'html', 'javascript', 'json']

" -----

" indentline
let g:indentLine_concealcursor = ""
let g:indentLine_setConceal = 0

" -----
